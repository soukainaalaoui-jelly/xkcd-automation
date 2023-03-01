
*** Variables ***
${SLOGAN}      A webcomic of romance,\nsarcasm, math, and language.

#Selectors
${HomepageLogo}       xpath://img[@alt="xkcd.com logo"]
${HomepageSlogan}       xpath://span[@id="slogan"]
${comicTitle}       xpath://div[@id="ctitle"]
${comicImage}       xpath://div[@id="comic"]/img
${permaLink}        xpath://div[@id='middleContainer']/text()[contains(.,'Permanent link')]/following-sibling::a[1]
${imgURL}        xpath://div[@id='middleContainer']/text()[contains(.,'Image URL')]/following-sibling::a[1]
${firstComic}       xpath://ul[@class='comicNav']/li/a[text()='|<']
${previousComic}       xpath://ul[@class='comicNav']/li/a[@rel='prev']
${randomComic}       xpath://ul[@class='comicNav']/li/a[text()='Random']
${nextComic}       xpath://ul[@class='comicNav']/li/a[@rel='next']
${lastComic}       xpath://ul[@class='comicNav']/li/a[text()='>|']
${menuEmail}       xpath://div[@id='topLeft']/ul/li/a[text()='Email']

#Regular Expressions
${regExPermaLink}       https:\/\/xkcd\.com\/\[0-9]+\/
${regEximgURL}       https:\/\/imgs\.xkcd\.com\/comics\/.+\.(png|jpg)