
UPDATE SYS_MENUS
SET FORM_CAPTION = 'AP Payment & Expense Entry',
     REPORTID = 'APPaymentVoucher.fr3,APPaymentVoucherTax.fr3'
WHERE (FORM_NAME = 'AP11') AND (MENU_INDEX = 1) AND (MODULE_ID = 'AP') AND (MENU_ITEM_INDEX = 1);



