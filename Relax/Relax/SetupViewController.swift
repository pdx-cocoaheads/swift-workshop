//
//  SetupViewController.swift
//  Relax
//
//  Created by Ryan Arana on 2/7/15.
//  Copyright (c) 2015 PDX-iOS. All rights reserved.
//

import UIKit

class SetupViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    var activities: [Activity]?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        activities = DataStore.loadActivities()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func addActivity(sender: UIBarButtonItem) {
        // TODO: Implement me!
        println("Not Implemented.")
    }

    // MARK: UITableViewDataSource

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities?.count ?? 0
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("setupCell") as UITableViewCell

        if let activity = activities?[indexPath.row] {
            cell.textLabel?.text = activity.title
        }

        return cell
    }

    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return indexPath.row < activities?.count
    }

    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            if let activity = activities?[indexPath.row] {
                DataStore.removeActivity(activity)
                activities = DataStore.loadActivities()
            }
        }
    }

    // MARK: UITableViewDelegate

}
