//
//  Movie+Convenience.swift
//  MyMovies
//
//  Created by Bohdan Tkachenko on 6/13/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
import CoreData

extension Movie {
    
    @discardableResult convenience init(identifier: UUID = UUID(),
                                           title: String,
                                           hasWatched: Bool = false,
                                           context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
           self.init(context: context)
           self.identifier = identifier
           self.title = title
           self.hasWatched = hasWatched
       }
    
}