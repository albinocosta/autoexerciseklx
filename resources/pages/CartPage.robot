***Settings***

Documentation       Representation of the cart page with its actions and elements

***Variables***
${CHECKOUTBUTTON}           css:.btn.btn-default.check_out
${ERASEELEMENT2}             xpath:(//i[@class='fa fa-times'])[2]
${ERASEELEMENT1}             xpath:(//i[@class='fa fa-times'])[1]


***Keywords***
Check if cart was successfully loaded 
    Wait Until Element is Visible       ${CHECKOUTBUTTON}

Proceed to checkout
    Click Element                       ${CHECKOUTBUTTON}

I check if checkout was successfully loaded
    Wait Until Page Contains            Your billing address

I check if the products I have added are displayed in the checkout
    Wait Until Page Contains            Men Tshirt
    Wait Until Page Contains            Blue Top

I check if total value of products are correct
    Wait Until Page Contains            Rs. 900

Empty the cart
    ${is visible}=    Run Keyword And Return Status    Element Should Be Visible    ${ERASEELEMENT2}
    Run Keyword If    ${is visible}    Click Element   ${ERASEELEMENT2}
    ${is visible}=    Run Keyword And Return Status    Element Should Be Visible    ${ERASEELEMENT1}
    Run Keyword If    ${is visible}    Click Element   ${ERASEELEMENT1}