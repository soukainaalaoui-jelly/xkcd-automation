
*** Variables ***

${defaultEmailTextExpected}    To receive the comic and news postings in your inbox, subscribe here.
${disposableEmail}      soukaina-xkcd@yopmail.com
${subscriptionConfirmation}     You should receive an email at <disposable email> shortly which will enable you to complete the signup process.
${finalSubscriptionConfirmation}        Subscription for <disposable email> confirmed.

#Selectors
${emailTextDisplayed}       xpath://p
${completeSubscription}       xpath://p[text()='To complete the subscription process, you click the button below.']
${inputEmail}       xpath://input[@type='email']
${buttonSubscribe}       xpath://input[@value='subscribe']
${textDisplayedAfterSubscription}       xpath://body
${confirmSubscription}       xpath://input[contains(@value,'Confirm subscription')]