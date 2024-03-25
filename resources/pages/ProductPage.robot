***Settings***

Documentation       Representation of the product page with its actions and elements

***Variables***
${SEARCHINPUT}          css:#search_product
${SEARCHBUTTON}         css:.fa.fa-search
${TSHIRTRESULT}         xpath://div[@class='productinfo text-center']//child::p[contains(text(),'Men Tshirt')]
${BLUETOPRESULT}        xpath://div[@class='productinfo text-center']//child::p[contains(text(),'Blue Top')]
${PRODUCTBANNER}        css:div[class='productinfo text-center']
${ADDCARTBUTTON}        css:div[class='overlay-content'] a[class='btn btn-default add-to-cart']
${CONFIRMBUTTON}        css:.btn.btn-success.close-modal.btn-block

***Keywords***
Ensure Products Page was loaded 
    Wait Until Element is Visible       ${SEARCHINPUT}

Search for a 'men tshirt' product
    Wait Until Element is Visible       ${SEARCHINPUT}
    Input Text                          ${SEARCHINPUT}      men tshirt
    Wait Until Element is Visible       ${SEARCHBUTTON}
    Click Element                       ${SEARCHBUTTON}

Check if 'men tshirt' is visible
    Wait Until Element is Visible       ${TSHIRTRESULT}

Add 'men tshirt'
    Mouse Over                          ${PRODUCTBANNER}
    Wait Until Element Is Visible       ${ADDCARTBUTTON}
    Click Element                       ${ADDCARTBUTTON}
    Wait Until Element Is Visible       ${CONFIRMBUTTON}
    Click Element                       ${CONFIRMBUTTON}

Search for a 'blue top' product
    Wait Until Element is Visible       ${SEARCHINPUT}
    Input Text                          ${SEARCHINPUT}      blue top
    Wait Until Element is Visible       ${SEARCHBUTTON}
    Click Element                       ${SEARCHBUTTON}

Check if 'blue top' is visible
    Wait Until Element is Visible       ${BLUETOPRESULT}

Add 'blue top'
    Mouse Over                          ${PRODUCTBANNER}
    Wait Until Element Is Visible       ${ADDCARTBUTTON}
    Click Element                       ${ADDCARTBUTTON}
    Wait Until Element Is Visible       ${CONFIRMBUTTON}
    Click Element                       ${CONFIRMBUTTON}