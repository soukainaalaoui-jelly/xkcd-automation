
*** Settings ***
Library  Selenium2Library
Library  String
Resource    ./Homepage/keywords.robot
Resource    ./Homepage/variables.robot
Resource    ./Email/keywords.robot
Resource    ./Email/variables.robot
Resource    ./DisposableMail/keywords.robot
Resource    ./DisposableMail/variables.robot
Suite Setup  Open Browser    ${HOMEPAGE}   ${BROWSER}
Suite Teardown  Close All Browsers

*** Variables ***
${HOMEPAGE}     http://www.xkcd.com
${BROWSER}      Chrome
${disposableEmail}      soukaina-xkcd@sharklasers.com
${disposableEmailWebsite}     https://www.guerrillamail.com

*** Keyword ***

*** Test Cases ***

T.1 Verify the homepage's header
        [Documentation]    Verifies the general display of the homepage's header
    verify homepage logo
    verify homepage slogan

T.2 Verify the homepage's main content
        [Documentation]    Verifies the main content of the homepage which includes, verifying the image, the URLs
        ...                and also clicking on the different navigation buttons and verifying the navigation between
        ...                the different  comics.
    verify comic
    ${HomepageComicID}=     get comic ID
    click first comic
    #Verifying that the first comic id=1
    verify comic        1
    click next comic
    verify comic        2
    click previous comic
    verify comic        1
    click random comic
    verify comic
    click last comic
    #verifying that the last  comic corresponds to the default comic displayed in the homepage
    verify comic        ${HomepageComicID}

T.2 Verify email subscription
        [Documentation]    Verifies the email subscription functionality
    click email menu
    verify Email page is open
    #We don't want to use the same email all the time in order to avoid mistaking an old message for a new one
    ${randomNumber}    Generate random string    4    0123456789
    ${randomDisposableEmail}=       Catenate     SEPARATOR=     ${randomNumber}     ${disposableEmail}
    subscribe to emails     ${randomDisposableEmail}
    Go To     ${disposableEmailWebsite}
    #accept necessary cookies
    check confirmation email    ${randomDisposableEmail}
    confirm subscription inbox
    confirm subscription xkcd   ${randomDisposableEmail}