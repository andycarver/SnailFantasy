//
//  Player+CoreDataProperties.swift
//  SnailFantasy
//
//  Created by Ben Swanson on 1/12/17.
//  Copyright © 2017 Benjamin Swanson. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Player {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Player> {
        return NSFetchRequest<Player>(entityName: "Player");
    }

    @NSManaged public var name: String?
    @NSManaged public var job: String?

}
