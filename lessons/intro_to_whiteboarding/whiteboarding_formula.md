# Whiteboarding Protocol

## Objectives
* Outline the technical whiteboarding protocol/formula you are expected to follow in a technical interview.
* Drill and practice the whiteboarding protocol

## Protocol
### 1. Clarify the problem/Ask questions

   1. Communicate the interview question back to your interviewer in your own words.
   2. Based on the interviewer's response to your communicating back, ask clarifying questions
   3. During this back and forth communication create assumptions
   4. Then ask questions built upon those assumptions
     - Ask what is and is not allowed to be used. Built-in methods? Sorting?
   5. Your questions and the conversation should continue until you both reach a mutual agreement on the scope of the problem

### 2. Take note of Inputs, Outputs and Edge cases
   1. What you expect to be the most common scenario, case or input. 
   2. Think of and beware of edge cases.
   3. Ask about input and output structure, types, examples.
   4. Write sample inputs and outputs on the board.
   5. When an edge case is found go back to asking questions and building new assumptions. Ask you interviewer how the edge case would affect the output offer a few ideas for handling them. 
   6. Figure out which data structures could be useful for solving the problem.

### 3. Outline a Solution: Pseudocode
   1. Bullet points list-style steps to solve the problem
   2. Communicate your thought process. Speak out loud your steps throughout.
   3. This helps you organize and clarify your ideas. 
   4. This gives the interviewer an opportunity to interact and maybe give you some hints and suggestions if you are showing that you are a little bit stuck.
   5. If you feel unsure or confused ask clarifying questions, specially if the hint given by the interviewer changes your outline dramatically.

### 4. Code the Solution
   1. Face the interviewer while writing out and explaining your code and allow them interact with you. Make it a collaborative process
   2. Write readable code. Consider the size of your writing, indentation and matching opening and closing brackets.
   2. Write correct code for your Programing Language

### 5. Test your code.
   1. Take your input and run it through your code implementation. Usually start with a common input/scenario
   2. Say out loud what is happing at each step of execution
   3. Explain what is happening to your input at the current step.


### 6. Discuss Time and Space Complexity: Big O notation.
   1. How does the time that your algorithm takes to run relate to the size of your input?.
   2. How much more space is you algorithm using and how does it relate to the size of your input?.
   3. Talk through the performance of your solution, with emphasis on the performance of the operations on the data structures used
   4. Could changing the data structures you used improve the runtime complexity? Changing an Array for Hash table? Queue? etc.

## Demon & Practice
  * Instructor Demo: [canBalance](https://the-winter.github.io/codingjs/exercise.html?name=canBalance&title=Array-3)
  * Fellows Practice in pairs: *Remember to follow the process.*
    * **String Compression**: For each character in a string log the character and the count in a compressed format. 

      ```js
      stringCompression("aaabbcca") // => "a3b2c2a1"
      ```
    * **findDuplicates**: Write a function that takes an array and returns its duplicate values.

      ```js
      duplicates([2,2,1,4]) // => [2] 
      duplicates([]) // => [] 
      duplicates(["what", "are", 7, "doing"]) //=> []
      ```
    * **Transformable**: Given two strings, return whether the second can be transformed into the first by removing characters.

      * Example: `"aabbaa"` can be transformed into `"aba"` by removing `"a"`, `"b"`, and `"a"`
      * Clarifications: We can assume str2 always has greater or equal length than str1
      * Hint: What if str1 is an empty string? Start with the case where str1 === str2 and then build up
      
## Resources
* [Walking Through a Problem - CTCI](http://www.crackingthecodinginterview.com/uploads/6/5/2/8/6528028/cracking_the_coding_skills_-_v6.pdf) [MAP/FLOWCHART]
* [What is Whiteboarding - Codecademy](https://www.youtube.com/watch?v=XizttkvVsXI) [VIDEO]
* [Bria's Formula to whiteboarding](https://twitter.com/bria_sullivan/status/1171852539551199232)
