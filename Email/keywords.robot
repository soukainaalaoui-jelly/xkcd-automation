
*** Keyword ***

verify Email page is open
    Wait Until Element Is Visible   ${emailTextDisplayed}
    Element Text Should be  ${emailTextDisplayed}   ${defaultEmailTextExpected}

subscribe to emails
    [Arguments]   ${email}
    Wait Until Element Is Visible       ${inputEmail}
    Input Text  ${inputEmail}       ${email}
    Element should be visible   ${buttonSubscribe}     "The subscribe button is not visible"
    Click Element   ${buttonSubscribe}
    ${expectedMessage}=     Replace String      ${subscriptionConfirmation}     disposable email        ${email}
    Element Text Should be  ${textDisplayedAfterSubscription}   ${expectedMessage}

confirm subscription xkcd
    [Arguments]   ${email}
    Switch Window       locator=NEW
    Wait Until Element Is Visible       ${completeSubscription}       20
    Element should be visible   ${confirmSubscription}     "The subscription confrimation button is not visible"
    Click Element   ${confirmSubscription}
    ${expectedMessage}=     Replace String      ${finalSubscriptionConfirmation}     disposable email        ${email}
    Element Text Should be  ${textDisplayedAfterSubscription}   ${expectedMessage}
