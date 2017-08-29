# Homework 2 - *Decry*

**Decry** is a Ruby on Rails website for designers to share their feelings about specific mobile app design.

Submitted by: **Ian Tran**

Time spent: **X** hours

URL: **Insert your Heroku URL here**

## User Stories

The following **required** functionality is complete:


* [x] User can sign up by providing their email, password, and name. (Devise)
* [ ] Add video background behind login page
* [x] User can login using an email and password. (Devise)

* [ ] After logging in, the user is taken to a page that has a list of UI/UX mobile design post displayed as grid.
  * [ ] Use Behance API for the source of images 
  * [ ] Implement infinite scrolling (Optional)
* [ ] Clicking on a post will lead user to a page where they can see the details of the UI and some sample comments on it
  * [ ] By default, it shows a mix of good/bad comments in different place
  * [ ] User can filter good/bad/professional comments
  * [ ] User can hover on part of the post image to see the comments on that part particularly
  * [ ] User can click on a part of the post image to start comment on that part
* [ ] On the right there is a list share feelings of other about the design
  * [ ] User can start add new share from a form on the top of this part
  * [ ] User can scroll to see other's comments on it
  * [ ] Here also can sort, filter the share
* [ ] There is a page to see the report of comments
  * [ ] User can see how many people like it, hate it
  * [ ] The data will be displayed by graph using Chartkick gem
* [ ] User can create their own mobile design on Decry by batch uploading files
  * [ ] Using CarrierWave to upload batch files

The following **optional** functionality is complete:

* [ ] UI/UX design the app
* [ ] Animation implementation (Optional)
* [ ] TDD (Optional)
  * [ ] User CircleCI + SimpleCov to handle this part
* [ ] Apply react.js to the web (Optional)
* [ ] Using ajax to handle all things (Optional)
* [ ] Implement Chat and Web Notification with WebSocket (Optional)

The following **additional** features are implemented:

- [ ] (List anything else that you can get done to improve the app functionality!)

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

![Video Walkthrough](relative-path-to-your-gif-file-on-github-or-absolute-path-to-file-on-imgur-or-youtube)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

## License

    Copyright [2017] [Ian Tran]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.