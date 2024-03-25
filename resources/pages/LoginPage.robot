***Settings***

Documentation       Representation of the login page with its actions and elements

***Variables***
${INPUTMAIL}        css:input[data-qa='login-email']
${INPUTPS}          css:input[placeholder='Password']
${LOGINBUTTON}      css:button[data-qa='login-button']

***Keywords***
Login Section 
    Wait Until Element is Visible       ${INPUTMAIL}
    Input Text                          ${INPUTMAIL}        testmail123672@hotmail.com
    Input Text                          ${INPUTPS}          Rd235$%@#28#$(njv
    Click Button                        ${LOGINBUTTON}