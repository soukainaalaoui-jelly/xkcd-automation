
*** Keyword ***

verify homepage logo
    Element should be visible   ${HomepageLogo}     "The homepage's logo is not visible"

verify homepage slogan
    Element should be visible   ${HomepageSlogan}   "The homepage's slogan is not visible"
    Element Text Should be  ${HomepageSlogan}   ${SLOGAN}

get permanent link
    Element should be visible   ${permaLink}   "The comic's permanent link is not visible"
    ${txtPermaLink}=        Get Text       ${permaLink}
    [return]  ${txtPermaLink}

get comic ID
    ${txtPermaLink}=    get permanent link
    ${comicID}=     Get Regexp Matches      ${txtPermaLink}     [0-9]+
    ${NbcomicID}=     Convert To Integer       ${comicID}[0]
    [return]    ${NbcomicID}

click first comic
    Element should be visible   ${firstComic}     "The first comic button '|<' is not visible"
    Click Element   ${firstComic}

click previous comic
    Element should be visible   ${previousComic}     "The previous comic button is not visible"
    Click Element   ${previousComic}

click random comic
    Element should be visible   ${randomComic}     "The random comic button is not visible"
    Click Element   ${randomComic}

click next comic
    Element should be visible   ${nextComic}     "The next comic button is not visible"
    Click Element   ${nextComic}

click last comic
    Element should be visible   ${lastComic}     "The first comic button '>|' is not visible"
    Click Element   ${lastComic}

click email menu
    Element should be visible   ${menuEmail}     "The menu item 'Email' is not visible"
    Click Element   ${menuEmail}



verify comic
    #'expectedComicID' is an optional variable, if different than 0 the specified number will be verified within the permanent link of the comic
    [Arguments]   ${expectedComicID}=0
    ${expectedComicID}=     Convert To Integer       ${expectedComicID}
    #Let's verify the comic's Title
    Element should be visible   ${comicTitle}    "The comic's title is not visible"
    #Let's verify the comic's Image
    Element should be visible   ${comicImage}    "The comic's image is not visible"
    #Let's verify the comic's Permanent link
    ${txtPermaLink}=    get permanent link
    Should Match Regexp     ${txtPermaLink}     ${regExPermaLink}   Verifying the comic's premanent link
    #Let's verify the comic's ID
    IF    ${expectedComicID} !=0
            ${comicID}=     get comic ID
            Should Be Equal     ${comicID}     ${expectedComicID}       Verifying if the displayed comic ID equals the expected comic ID     True
    END
    #Let's verify the comic's Image URL
    Element should be visible   ${imgURL}   "The comic's image URL is not visible"
    ${txtImgURL}=   Get Text       ${imgURL}
    Should Match Regexp     ${txtImgURL}     ${regExImgURL}     Verifying the comic's Image URL