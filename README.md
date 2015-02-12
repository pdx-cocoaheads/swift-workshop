# Relax in Swift!

Relax is an app for iOS to help suggest and track *quality* downtime activities. When the user launches the app, Relax will suggest an activity at random (from either a list determined by the user, or chosen from the default set of activities). If the user declines, a different activity is suggested. If the user starts the activity, a feedback view is presented where the user can record notes and a rating for the activity. The user can later review these records to help determine which activities add to their quality of life.

Relax is a Swift project with most of the core classes stubbed out. A storyboard with basic UI is provided, with a UITabBarController acting as the root view controller. The three main tab views are the activity view controller, a setup/config view controller, and the activity history table view controller.

# Tasks

The unimplemented parts of the app fall mainly in two categories; persisting objects to disk, and connecting the UI to the data layer.

* Saving and loading History objects to disk. Implementing the NSCoding protocol would work, as would using Core Data or SQLite. 
* Displaying information about activity history items in the history table view controller.
* Allowing the user to add and remove activities from the configuration table view controller, and persisting the new activities to disk.
* Creating new activity history items from the perform activity view controller, and making sure the view controller is visible at launch once the user has started an activity.
