//
//  HashTableViewController.swift
//  HashTableFun
//
//  Created by C4Q on 12/19/16.
//  Copyright © 2016 C4Q. All rights reserved.
//
import UIKit
class HashTableViewController: UITableViewController {
    var hashTable = Hash<String, Int>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        hashTable.insert("five", 5)
//        hashTable.insert("two", 2)
//        hashTable.insert("three", 3)
//        hashTable.insert("four", 4)
//        hashTable.insert("six", 6)
//        hashTable.insert("eight", 8)
//        hashTable.insert("one", 1)
//        hashTable.insert("seven", 7)
//        hashTable.insert("nine", 9)
//        hashTable.insert("ten", 10)
//        hashTable.insert("eleven", 11)
//        hashTable.insert("eleven", 12)
//        
//        print(hashTable.get(key: "eleven"))
        
        let para = "ZEUS was the King of the Gods and the god of the sky, weather, law and order, destiny and fate, and kingship. He was depicted as a regal, mature man with a sturdy figure and dark beard. His usual attributes were a lightning bolt, a royal sceptre and an eagle. Zeus was the youngest child of the Titans Kronos (Cronus) and Rheia. Kronos devoured each of his children as they were born, but Zeus escaped this fate when his mother spirited him away, handing the Titan a stone substitute wrapped in swaddling cloth. The god was raised in secrecy on Mount Dikte in Krete (Crete) where he was nursed by nymphs on the milk of the goat Amaltheia and guarded by the warrior Kouretes (Curetes) who drowned out the sound of his crying with their shield-clashing battle-dance. Upon coming of age Zeus recruited the goddess Metis to his cause. She served the Titan Kronos a magical draught which caused him to disgorge the young gods he had devoured. Zeus liberated the six giant-sons of Heaven from the pit of Tartaros. In gratitude the Kyklopes (Cyclopes) armed him with lightning-bolts and the Hekatonkheires (Hundred-Handed) aided him in his assault on the Titanes with volleys of thrown boulders. Kronos and his allies were eventually defeated and banished to a prison beneath the earth."
        let paraString = para.components(separatedBy: " ")

        for word in paraString {
            hashTable.insert("\(word)", 1)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return hashTable.buckets
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bucketID", for: indexPath)
        let bucket = hashTable.getBuckets()[indexPath.row]
        
        cell.textLabel?.text = bucket?.joined(separator: ", ") ?? "NULL"
        
        return cell
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     }
     */
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    /*
     // MARK: - Navigation
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
}
