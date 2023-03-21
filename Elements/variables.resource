*** Variables ***
# Login page variables
${URL_lojinha}    http://<domain>/lojinha-web/v2/
${input_user}    //input[@id="usuario"]
${input_password}    //input[@id="senha"]
${button_submit}    //button[@type="submit"]

# Products page variables
${button_addProduct}    //a[@href="http://<domain>/lojinha-web/v2/produto/novo"]
${input_productName}    //input[@id="produtonome"]
${input_productValue}    //input[@id="produtovalor"]
${input_productColor}    //input[@id="produtocores"]
${button_save}    //button[@type="submit"]