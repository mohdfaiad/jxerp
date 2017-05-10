  select  *from so_quotation_hd  HD,
  SO_QUOTATION_DT DT      , so_sales_item_hd ITEM
  WHERE HD.DOC_NO = 
DT.DOC_NO
  AND HD.DOC_DATE = 
DT.DOC_DATE
AND
DT.item_code = ITEM.ITEM_CODE
AND
DT.cust_code = ITEM.cust_code
  AND HD.DOC_NO=:PDOCNO
