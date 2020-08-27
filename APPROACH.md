Proposed agenda
===============

1. Approach & assumptions (15min)
2. App demo, architecture & questions towards applicant (45 min)
3. Questions towards MediaMarktSaturn (20 min)
4. Next steps (10 min)


Assumption-based approach
=========================

When deciding how to approach the task these were the deciding factors:
* no response to my question whether it is planned to allow for questions regarding goals, requirements and constraints.
* short, ambiguous task description

I therefore decided to go with an **assumption-based approach** based on the information I have and additional requirements/constraints that I will impose for the project.


### Requirements for assumption-based approach

* documentation of assumptions
* documentation of decisions


Deriving initial assumptions
============================


General
-------

*ASSUMPTION* Assumption-based approach is fitting.


Personal requirements
---------------------

Since this is an unpaid code challenge I am working on in my free time, I have some personal requirements in order to make sure the time I spend has value for me personally as well.

* learn new technologies
  * use ``GraphQL`` (since it is used at MMS)
  * use ``flutter-hooks`` and minimize stateful widgets
* code for a maximum of 20 hours 
  * research and problem-solving in free time is permitted (as I also do this in my employment)
  * additional effort for documentation is permitted
* focus on solving problems, code quality, architecture over repetitive tasks
* focus on documentation content over styling


User Story
----------

    As a PO

Stakeholder is Product Owner


    all issues of our Github repositories

How to define "our GitHub repositories"? Do we really want to view all issues at the same time (conflict with ACC)?

*ASSUMPTION* "our GitHub repositories" refers to the GitHub repositories of the currently logged in user


    to quickly view all issues of one project after each other

value of this user story is not clearly indicated, instead the actual task seems to be presented as the value.
'projects' is something different than repositories in github.

*ASSUMPTION* project refers to repositories not github projects (ACC take precedence).
*ASSUMPTION* user story is secondary, ACC should be focused on.


Requirements
------------


    Fork 3 Flutter Repositories (https://github.com/flutter)

 Unclear what the value of this requirement is, as issues are not being cloned for forked repositories. This allows for at least 3 entries on the repository list page.


    A technical demo with your account will be needed
  *DECISION* using newly created account for this task.


    It is enough to showcase one platform. Make sure Simulator/Emulator is prepared
  
  *ASSUMPTION* Android, iOS, Web are acceptable target platforms as long as app is tailored towards mobile phone device (ACC requirement)


Acceptance criteria
-------------------

### Login screen
    with common login functionalities

Very ambiguous description. Common login functionalities could be:
* visually appealing login screen
* username/email text field
* username/email validation with feedback for user
* password text field
* password validation with feedback for user
* login button to trigger authentication request
* forgot password button to trigger password reset request
* register button to trigger signup request
* link to legal texts
* SSO button for 3rd party identity providers

*ASSUMPTION* The capability to build a sensible Login UI shall be demonstrated. Additional functionality like password-reset will be built into UI but not have any functionality attached to it. Specifics depend on GitHub API requirements.
*DECISION* After taking a look at the GitHub GraphQL API it became clear that GitHub OAuth flow must be used. In order to still do some work for a login screen I decided to at least add a username input + validation to the login form as it can be passed to the OAuth flow.


### Repository List
  Shows all relevant information for a repository

*ASSUMPTION* The ACC actual refers to an item within the repository list. The repository list shall display multiple repository list items. 

*ASSUMPTION* Since it is unclear what 'relevant' information shall be, I am required to make further assumptions when deciding upon 'relevant' information.


### Repository List
    Click to one list item transitions to the issue list of that repository

No assumptions necessary, requirement is clear.


### Issues List
    Shows all needed information for each issue

*ASSUMPTION* A list view shall be built that displays all issues for the selected repository.

*ASSUMPTION* Since it is unclear what 'needed' information refers to, I will be required to make further assumptions when deciding upon 'needed' information.

*NOTE* Another screen for issue details would probably make sense to not overload the issue list with detail information.

### UI 
    UI should look good on the device you will present. Optimize for that

*ASSUMPTION* UI that 'looks good' respects Material Design philosophy.

*DECISION* Login button may violate Material Design guidelines to save work time.

### UI
    The device your App runs on has to be a Phone

*ASSUMPTION* According to previous remarks I assume emulators, simulators are allowed.

*ASSUMPTION* Since emulators and simulators are allowed, a web browser simulating a mobile device would also be sufficient. This would facilitate a more performant presentation.

*DECISION* Use Pixel 4 Emulator for presentation

### UI
  Dark and light mode should be supported

*ASSUMPTION* App should be able to toggle between light mode and dark mode. Two themes have to be created.

*DECISION* Use built-in MaterialApp feature to toggle between themes. Do not offer manual switching.

### Testing
    write both unit and widget tests where it makes sense

The user story states that the app will be used by the PO, no other stakeholders are stated. 

*ASSUMPTION* PO is only person that will ever use the app and only for a very limited scope of functionality.

I do not see the value of high test coverage for this application due to its limited user group and functionality. I see very low value in spending my free time on repetitive tasks for an coding challenge.

*ASSUMPTION* Goal of this task is to demonstrate familiarity with different types of tests and proper judgement where tests bring most value.

*DECISION* I will write a few tests of each type (probably only one for flutter driver test) to demonstrate my capability to write tests and point out what else should be tested. I will focus my time on architecture, code quality and documentation instead.

### Testing
    "Bonus: flutter driver tests"

*DECISION* Will write at least one flutter driver test.

### Technical
    provider & change notifier for state management.

*ASSUMPTION* 'state management' refers to app state, not ephemeral state.
