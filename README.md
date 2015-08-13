# Community

##### Community is a Reddit/Voat inspired form that allows users to create profiles, add categories, submit posts and comments and take on admin roles. It is currently under development and is being used as a project to learn Rails.

#### By **Tim Kellogg**

## Description

Community is inspired by Reddit and Voat.  It seeks to promote open conversation about many different topics and websites

* Fix/convert notices to flash notices in the style of the Rails Tutorial so different for danger, etc.
* Add more priviledges/restrictions to different actions
* AJAXify Comments section
* Add ability to create/delete/edit new forms and on creation/editing/deleting it adjusts the db relationship through categorizations : https://hackhands.com/building-has_many-model-relationship-form-cocoon/



# _Community_

##### _A Reddit/Voat Inspired, Community-Driven Forum, August 12, 2015_

#### By _**Tim Kellogg**_

## Description

Community is a community-driven forum inspired by Reddit and Voat. It aims to provide users with a rich experience in talking and communicating about many different issues.  Users have the ability to create new posts, comments and soon categories!  It also keeps track of the different statistics that that user has including commenting, highest-upvoted comment, etc.

## Setup

* Download the Repository
* `cd` in to the directory
* `bundle install` gem dependencies
* `rake db:migrate` to refresh and reinstall the database
* `rails server` to start the server

## Technologies Used

* Testing: test-unit, capybara
* Database: sqlite3
* Server: default (will move to puma)
* Front-End: Bootstrap, jQuery
* Authentication: devise
* Authorization: cancancan

### Legal

Copyright (c) 2015 **_Tim Kellogg_**

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
