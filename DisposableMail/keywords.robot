
*** Keyword ***

accept necessary cookies
    Wait Until Element Is Visible       ${necessaryCookies}
    Click Element   ${necessaryCookies}

check confirmation email
    [Arguments]     ${email}
    Wait Until Element Is Visible       ${emailButton}
    Click Element   ${emailButton}
    Element should be visible   ${emailInput}
    Input Text  ${emailInput}       ${email}
    Element should be visible   ${setButton}
    Click Element   ${setButton}
    Wait Until Element Is Visible   ${xkcdEmail}   30

confirm subscription inbox
    Element should be visible   ${xkcdEmail}
    Click Element   ${xkcdEmail}
    Wait Until Element Is Visible   ${confirmationLink}     30
    Click Element   ${confirmationLink}