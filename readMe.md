# xkcd Test Automation

## Requirements
Run the following commands to install robotframework and selenium.
```sh
pip3 install robotframework
pip install selenium robotframework-selenium2library webdrivermanager
```
Add your chrome driver to where your python installation is located, for mac it would be "usr/local/bin"
## Test plan
The common prerequisite to all tests would be navigating to the website "https://xkcd.com/"
- Homepage
    - Header
    - Content
    - Footer
- Archive
- What If?
- About
- Feed
- Email
- Social media
- Books

### Homepage

#### T1. Verify homepage header

| N   | Step                    | Input             | Expected result                                                        |
|-----|-------------------------|-------------------|------------------------------------------------------------------------|
| 1.a | Navigate to the website | https://xkcd.com/ | Page logo appears : "XKCD"                                             |
| 1.b |                         |                   | Slogan appears : "A webcomic of romance, sarcasm, math, and language." |

#### T2. Verify homepage content

| N   | Step                         | Input             | Expected result                                                            |
|-----|------------------------------|-------------------|----------------------------------------------------------------------------|
| 1.a | Navigate to the website      | https://xkcd.com/ | The comic's title is displayed                                             |
| 1.b |                              |                   | A main comic is displayed                                                  |
| 1.c |                              |                   | The permanent link to the comic is displayed                               |
| 1.d |                              |                   | The image URL is displayed                                                 |
| 2   | Click on the button "<"      |                   | The first created comic is displayed                                       |
| 3   | Click on the button "Next>"  |                   | The next comic is displayed                                                |
| 4   | Click on the button "<Prev"  |                   | The previous comic is displayed                                            |
| 5   | Click on the button "Random" |                   | A random comic is displayed                                                |
| 6   | Click on the button ">"      |                   | The latest created comic is displayed (which should be the same as step 1) |

### Email

#### T3. Verify email subscription

| N   | Step                                                            | Input                      | Expected result                                                                                                                              |
|-----|-----------------------------------------------------------------|----------------------------|----------------------------------------------------------------------------------------------------------------------------------------------|
| 1   | Navigate to the website                                         | https://xkcd.com/          |                                                                                                                                              |
| 2   | Click on Email on the top left menu                             |                            | Text appears : "To receive the comic and news postings in your inbox, subscribe here."                                                       |
| 3   | Input an accessible disposable email in the text field          | <random_email>@yopmail.com | The email is displayed                                                                                                                       |
| 4   | Click on subscribe                                              |                            | Text appears : "You should receive an email at <<random_email>@yopmail.com  > shortly which will enable you to complete the signup process." |
| 5   | Open the disposable email website                               | https://yopmail.com/       | The website is open                                                                                                                          |
| 6   | input the disposable email you have chosen                      | <random_email>@yopmail.com | You have received a newsletter signup confirmation email                                                                                     |
| 7   | click on the link provided in the email to confirm subscription |                            | Text appears : To complete the subscription process, you click the button below.                                                             |
| 8   | click on the button confirm subscription                        |                            | Text appears :  Subscription for <random_email>@yopmail.com   confirmed.                                                                     |
