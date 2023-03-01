
*** Variables ***

#Selectors
${necessaryCookies}       xpath://button[contains(text(),"Necessary Cookies")]
${emailButton}     xpath://span[contains(@data-intro,'Inbox ID')]/span
${emailInput}     xpath://span[contains(@data-intro,'Inbox ID')]/span/input
${setButton}     xpath://span[contains(@data-intro,'Inbox ID')]/span/button[text()='Set']
${confirmationEmailTitle}   xpath://body[contains(@class,'bodymail yscrollbar')]/header/div/div[contains(text(),'Newsletter signup confirmation email')]
${confirmationLink}   xpath://div[@class='email_body']/a
${xkcdEmail}   xpath://tbody[@id='email_list']/tr/td[contains(text(),'xkcd')]