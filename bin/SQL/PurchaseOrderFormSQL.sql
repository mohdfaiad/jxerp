SElect H.Supp_code, H.status,H.order_no,
 H.order_date,H.ref_no,H.ref_date,h.validity,
h.fax_to,h.cc_to,H.Delivery_Date,H.REMARKS,H.markup,
D.Item_Code,D.Line_no,D.UOM,D.DISCS_CD,D.DISCS_AMT,
D.Item_Descs,D.Unit_cost,D.Total_amt,D.qty,
D.tax_amt , d.base_amt,
D.Remarks AS REMARK1,
S.Name,S.Address1,S.Address2,S.Address3,S.Telephone,S.Fax_no,S.PostCode,S.Province,
c.credit_term, C.TH_name, C.TH_ADDR1,C.TH_ADDR2, C.TH_ADDR3, 
c.CURRENCY_CODE, currency.descs as curr_descs,
substr(IC_MAT_STK_HD.EN_DESCS,1,40),substr
(IC_MAT_STK_HD.EN_DESCS,41,80),substr(IC_MAT_STK_HD.EN_DESCS,81,120),
substr(IC_MAT_STK_HD.TH_DESCS,1,40),
substr(IC_MAT_STK_HD.TH_DESCS,41,80),
substr(IC_MAT_STK_HD.TH_DESCS,81,120)
From PO_Order_hd H, PO_Order_DT D, PO_Supplier S,ap_creditor c , 
IC_MAT_STK_HD , currency
Where D.Supp_code = H.Supp_code
and D.Order_no = H.Order_no
and D.Order_date = H.Order_date
and S.Supplier_cd = H.Supp_Code
and s.creditor_ACCT = c.creditor_acct
and c.creditor_acct = h.supp_code
and c.currency_code = currency.currency_code
and ic_mat_stk_hd.stock_cd = D.item_code
AND  h.ORDER_NO= :PDOCNO
AND h.STATUS ='N'
