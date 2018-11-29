# Teaching Notes
[![Build Status](https://travis-ci.org/Adjoa/teaching-notes-travis.svg?branch=master)](https://travis-ci.org/Adjoa/teaching-notes-travis)

Teaching Notes is a student management tool inspired by my music teachers and built with Ruby on Rails[v 5.1.5]. I studied music through primary and secondary school. In both instances, there were very few teachers and a whole lot of students. Things haven't changed since I graduated. My high school currently has about 1200 students. My music teacher is responsible for all students interested and enrolled in a music program --choir, piano, and/or steel pan. They're quite popular.

## Installation

To take this application for a test drive, run the following from the command-line:
```
  $ git clone https://github.com/Adjoa/teaching-notes-travis.git
  $ cd teaching-notes-travis
  $ bundle install
  $ rake db:migrate
  $ rake db:seed
  $ rails server
```
Then navigate to the IP address displayed.

## How to Use
Once you've got the app set up, you can create an account or log in as one of the pre-existing users. Each of these users already has some student records associated with their account.
Password: 'password'
Email:
- peter.tosh@email.com
- dawnsings@email.com
- markstrings@email.com

There are 3 tabs: Students, Events, and Rehearsals. 

### To create a student record
Select the 'Students' tab.
Click 'Add Student' in the top-right corner of the students table.
Fill in all the form fields.
Click 'Create Student'.
This action will take you to the student's profile page, titled 'Student Info'.

### To create a student log entry
Select the 'Students' tab.\
Under the 'Details' column of the students table there is a 'View' option.\
Click 'View' to access the profile of the student named in that row.\
Under the 'Entries' tab, click 'Add New Entry'.\
Fill in all the form fields.\
Click 'Create Entry'.\
This action will take you back to the student's profile page.\
The created entry will be listed under the 'Entries' tab.\

### To create an event
Select the 'Events' tab.
Click 'Add Event' in the top-right corner of the events table.
Fill in the form fields.
Click 'Create Event'.
This action will take you to the event page.

### To create a rehearsal
Rehearsals can only be created for existing events.
Select the 'Rehearsals' tab.
Click 'Add Rehearsal' in the top-right corner of the rehearsals table.
Select an event from the drop-down menu.
Fill in the form fields.
Click 'Create Rehearsal'.
This action will take you to the rehearsal page.

### To add a student to a rehearsal
Select the 'Rehearsals' tab. 
Select a rehearsal from the list by clicking the associated event's name.
Note: This list is also accessible from a student's page by clicking 'Add New Rehearsal' under the 'Rehearsals' tab.
The rehearsal page lists all the students associated with the account. 
Toggle the Yes/No button under the 'Attending' column in the row of the student being added.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Adjoa/teaching-notes-travis.

## Authors

* [**Adjoa Darien** ](https://github.com/Adjoa)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

