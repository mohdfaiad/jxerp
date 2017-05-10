CREATE OR ALTER procedure X_AP_POST_INVOICE  (  ADOC_NO varchar(15),
    ADOC_DATE timestamp,
    ACREDITOR varchar(10),
    AUPDATE_USER varchar(10))
as
declare variable CURRENCY_CODE varchar(10);
declare variable CREDITOR_TYPE varchar(10);
declare variable FYEAR integer;
declare variable FOUND_RECORD integer;
declare variable FMONTH integer;
declare variable TAX double precision;
declare variable AMOUNT double precision;
declare variable GRAND_TOTAL double precision;
declare variable DELIVERY_NO varchar(15);
declare variable DELIVERY_DATE timestamp;
declare variable DESCS varchar(60);
declare variable TRX_TYPE varchar(2);
declare variable REQUIRE_REFERENCE varchar(1);
declare variable ORDER_NO varchar(15);
declare variable ORDER_DATE timestamp;
BEGIN
  /* AR INVOICE POST ACTION
     ACTION INSERT DATA INOT AL_LEDGER AND UPDATE STATUS IN AP_INVOICE_HEADER
   */
  FYEAR = extract(YEAR FROM aDOC_DATE);
  FMONTH = EXTRACT(MONTH FROM aDOC_DATE);

  SELECT   CREDITOR_TYPE ,CURRENCY_CODE
  FROM AP_CREDITOR
  WHERE CREDITOR_ACCT = :aCREDITOR
  INTO  :CREDITOR_TYPE,:CURRENCY_CODE ;

  FOR SELECT SUM(D.BASE_AMT),SUM(D.TAX_AMT),SUM(D.DOC_AMT),COUNT(h.CREDITOR_ACCT) ,
  D.ref_no,D.REF_DATE ,max(h.descs) ,MAX(H.trx_type),MAX(D.ref_no),MAX(D.REF_DATE)
  FROM AP_INVOICE_DT d ,AP_invoice_hd   h
  WHERE  d.CREDITOR_acct = h.CREDITOR_acct
  and d.doc_no = h.doc_no
  and d.doc_date = h.doc_date
  and  h.CREDITOR_ACCT = :aCREDITOR
  and h.DOC_NO    = :aDOC_NO
  and h.DOC_DATE  = :aDOC_DATE
  GROUP BY   h.CREDITOR_ACCT,h.DOC_NO,h.DOC_DATE   ,d.REF_NO,d.REF_date
  INTO :AMOUNT,:TAX,:GRAND_TOTAL,:FOUND_RECORD,:delivery_no,:delivery_date ,:descs  ,:TRX_TYPE   ,
  :ORDER_NO ,:ORDER_DATE
  do
  begin
    SELECT MAX(REQUIRE_REFERENCE)
    FROM TRANSACTIONTYPE
    WHERE TRX_TYPE =:TRX_TYPE
    INTO :REQUIRE_REFERENCE;
    if (REQUIRE_REFERENCE is null) then REQUIRE_REFERENCE ='X' ;
    INSERT INTO AP_LEDGER (
    CREDITOR_ACCT,DOC_NO, DOC_DATE,REF_NO,ref_date,FMONTH,CREDITOR_TYPE,TRX_TYPE,FYEAR,CURRENCY_CODE,CURRENCY_RATE ,MBASE_AMT,
    MTAX_AMT, MDOC_AMT,FBASE_AMT,FTAX_AMT, FDOC_AMT,MALLOC_AMT,FALLOC_AMT,MBAL_AMT, TAX_INV_NO ,CLASS,DR_CR_MODE,FBAL_AMT,
    BANK_CD, UPDATE_USER,UPDATE_DATE,DESCS)
    VALUES(
    :aCREDITOR,
    :aDOC_NO,
    :aDOC_DATE,
    :delivery_no,
    :delivery_date,
    :FMONTH,
    :CREDITOR_TYPE,
    :TRX_TYPE,
    :FYEAR,
    :CURRENCY_CODE,
    0 ,
    :AMOUNT,
    :TAX,
    :GRAND_TOTAL,
    :AMOUNT,
    :TAX,
    :GRAND_TOTAL,
    0,
    0,
    :GRAND_TOTAL,
    :aDOC_NO,
    'I',
    'C',
    :GRAND_TOTAL,
    'NULL',
   :aupdate_user,
    CURRENT_TIMESTAMP,
    :descs
    );
  

    UPDATE AP_INVOICE_HD   SET STATUS = 'X'
    WHERE
    CREDITOR_ACCT = :aCREDITOR AND
    DOC_NO    = :aDOC_NO AND
    DOC_DATE  = :aDOC_DATE  ;

   END




end

