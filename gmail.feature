Feature: gmail



Background: 

And i assign "deladell440" to variable "user"
And i assign "Dela@2022" to variable "pwd"

@creation
Scenario:user creation in gmail
Given I open "chrome" web browser
And I navigate to "https://www.google.com/" in web browser within 10 seconds
If I see element  "text:Sign in to Google" in web browser 
	then I click  element "text:No thanks" in web browser
  EndIf
  And I wait 5 seconds
  Then I click element "xPath://a[@class='gb_d']" in web browser within 5 seconds
  And I click element "xPath://span[@class='laptop-desktop-only']" in web browser
  Once I see image "Image:BY\google.png" in web browser within 5 seconds
And I type "Test" in element "xPath://input[@name='firstName']" in web browser
And I type "DP" in element "xPath://input[@name='lastName']" in web browser
#And I type "DP" in element "xPath://input[@name='lastName']" in web browser
#And I type "DP" in element "xPath://input[@name='lastName']" in web browser

#And I type "DP" in element "xPath://input[@name='lastName']" in web browser
#And I type "DP" in element "xPath://input[@name='lastName']" in web browser

And I type $user in element "id:username" in web browser

And I type $pwd in element "xPath://input[@name='Passwd']" in web browser
And I type $pwd in element "xPath://input[@name='ConfirmPasswd']" in web browser
And I click element "xPath://div[@class='VfPpkd-YQoJzd']" in web browser
And I click element "id:accountDetailsNext" in web browser


#//input[@id='username']


Scenario:login to gmail


@rediff
Scenario: rediff mail
Given I open "chrome" web browser
And I navigate to "https://mail.rediff.com/cgi-bin/login.cgi" in web browser within 10 seconds
  And I wait 5 seconds
  Then I click element "xPath://a[@title='Create new Rediffmail account']" in web browser within 5 seconds
  Then I open new tab in web browser
  and I press keys CTRL+T 
  And I navigate to "https://mail.rediff.com/cgi-bin/login.cgi" in web browser within 10 seconds
  And I wait 5 seconds
  
  Scenario:
  
  
  Once I see "Create a Rediffmail account" in web browser
#Enter Full Name
And I type "Test user" in element "xPath://input[@name='name56acfdc4']" in web browser
#Enter mail id
And I type $user in element "xPath://input[@name='login56acfdc4']" in web browser
And I click element "xPath://input[@name='btnchkavail56acfdc4']" in web browser
Then I wait 5 seconds
And I click element "xPath://input[@value='Check availability']" in web browser


And I type "DP" in element "xPath://input[@name='lastName']" in web browser
#And I type "DP" in element "xPath://input[@name='lastName']" in web browser

#And I type "DP" in element "xPath://input[@name='lastName']" in web browser
#And I type "DP" in element "xPath://input[@name='lastName']" in web browser

And I type $user in element "id:username" in web browser

And I type $pwd in element "xPath://input[@name='Passwd']" in web browser
And I type $pwd in element "xPath://input[@name='ConfirmPasswd']" in web browser
And I click element "xPath://input[@name='btnchkavail56acfdc4']" in web browser
And I click element "id:accountDetailsNext" in web browser