# Pre-work - What's the Damage?

**What's the Damage** is a tip calculator application for iOS.

Submitted by: **Mohammad Naqvi**

Time spent: **7** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [x] Making sure the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible. 


The following **additional** features are implemented:

- [x] A function to round the tip to the nearest dollar 

## Video Walkthrough

Here's a walkthrough of implemented user stories:


![](https://i.imgur.com/U6IqYOb.gif)


GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

I spent a few hours trying to implement a bill splitting feature with a maximum value of 5, however the UIStepper was not being updated for some odd reason. I included a function to handle the stepper increments and decrements and other methods. I left those parts of the code commented out, and will revisit in the next few days. 

## License

    Copyright [2021] [Mohammad Naqvi]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
