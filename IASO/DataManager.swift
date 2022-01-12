//
//  DataManager.swift
//  IASO
//
//  Created by MacMini on 1/11/22.
//

import Foundation
import CoreData

//Manages data from Daily Checks
class DataManager {
    
    let persistentContainer: NSPersistentContainer
    
    init() {
        persistentContainer = NSPersistentContainer(name: "DataModel")
        persistentContainer.loadPersistentStores {
            (description, error) in
            if let error = error {
                fatalError("Core Data Store Failed \(error.localizedDescription)")
            }
        }
    }
    
    //Saves new Daily Check
    func save(text: String) {
        let entity = DailyCheckEntity(context: persistentContainer.viewContext)
        entity.text = text
        
        do {
            try persistentContainer.viewContext.save()
        }
        catch {
            print("Failed to Save \(error)")
        }
    }
    
    //Returns an array of all saved Daily Checks
    func loadAll() -> [DailyCheckEntity] {
        let fetchRequest: NSFetchRequest<DailyCheckEntity> = DailyCheckEntity.fetchRequest()
        
        do {
            return try persistentContainer.viewContext.fetch(fetchRequest)
        }
        catch {
            return []
        }
    }
}
