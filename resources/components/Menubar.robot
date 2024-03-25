***Settings***
Documentation       Top menu representation

***Variables***
${SIGNIN}       css:a[href='/login']
${PRODUCTS}     css:a[href='/products']
${CART}         css:a[href='/view_cart']
${LOGOUT}       css:a[href='/logout']

***Keywords***
Click Login Button
    Wait Until Element Is Visible   ${SIGNIN}    
    Click Element                   ${SIGNIN}

Logout Section
    Wait Until Element Is Visible   ${LOGOUT}   
    Click Element                   ${LOGOUT}
    Wait Until Element Is Visible   ${SIGNIN}

I click on Products menu button
    Wait Until Element Is Visible   ${PRODUCTS}   
    Click Element                   ${PRODUCTS}

Load my cart page
    Wait Until Element Is Visible   ${CART}   
    Click Element                   ${CART}

Go back to start of cart flow
    Wait Until Element Is Visible   ${CART}   
    Click Element                   ${CART}