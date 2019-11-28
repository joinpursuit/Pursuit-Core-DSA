# Two-Lane Parking Management System


| Difficulty | Tags     | Solution Link |
| ---------- | -------- | ------------- |
| Medium     | [Stacks] | [To Do]()     |

## Problem Description

Write a program for the management of a parking garage.

A Parking Garage contains 2 lanes, each capable of holding up to 10 cars. There is only a single entrance/exit to the garage at one end of the lanes.


![parking lot](../assets/parking_lot.png)

* When a customer arrives to pick up their car…
  * If their car is not near the exit, all cars blocking the cars' path are moved into the other lane. If more cars still must be moved out of the way, they go into the street. When the customer's car is driven out, all the cars in the street must be put back into the garage.

* When a car arrives to park determine whether or not there is room in the garage for the car. If there is no room, the car leaves without entering.  

* When a car departs, return the **number of times cars had to be moved out of the way so that the exiting car could depart**. 
  
* Don't forget to check for conditions such as someone wanting a car that's not in the garage, trying to park a car but both lanes are full, trying to park a car when only one lane is full, etc.

* Which Data Structure is the ‘best fit’?
