# Code Challenge Strategies

Today we'll discuss some methods for how to work through code challenges.

## Introduction

Basically every programming job will require you to do a technical interview. This might be whiteboarding, live coding on a laptop, or a take-home test with a time limit. 

These interview problems are very doable, but the pressure of having a time limit and also doing them in front of people make the interview process extremely nerve-wracking. 

Getting better at these is mostly just a matter of practice, but there are also some strategies we can learn.

## What the interviewer is looking for

- Understanding of the problem they've asked you to solve.
  - Are you going in the right direction?
  - If you're not, are you asking for clarification?
  - Sometimes the instructions are intentionally vague to get you to drill down and ask clarifying questions
- Understanding of what you're doing, not just stabbing in the dark
- How you deal with getting stuck (that's like 80% of the job!)
- Can you walk through what you're doing as you're doing it?
- When finished, can you explain why you did it that way?

## Things you should be comfortable doing

- Reading / reasoning about code without being able to execute it
- Asking for help and clarification
- Being okay with minimal guidance - even if you ask for help, you might not get much
- Communicating what you're doing and why

## Read the whole problem first

You might not understand what it's asking you to do until you get to the end.

Usually the prompt will provide examples of the input and output, which helps visualize the process.

## Extract relevant information

What is relevant? Are you sure?

What is irrelevant? Are you sure?

Sometimes problems aren't worded very clearly - this can be on purpose or not. Read carefully!

## Summarize & Restate the problem in your own words

This helps you to start down the road of developing a plan. Also, trying to explain what you just read/heard is a way of checking your own understanding.

## Outline some high level steps

1. What needs to happen? (Restating the problem)
1. What's the end goal (usually this means: what does my function need to return?)
1. Is it easier to work backward, or forward? Or some combination of the two?
1. Try to have an idea of where you're going before you start coding, but you don't have to know the entire process. If you can solve the whole thing in your head before you start coding, great. Otherwise, try to break it down into steps. This is the hardest and most time consuming part.
1. As part of step 4, write out pseudocode which looks something like this:

```js
// split input string into array of strings
// loop through array to extract date, name, city, index
// build array of objects from loop
// make new object, grouping objects by city
// sort array by date
// build string from sorted array
// return string
// etc...
```

Having a plan / some structure to fall back on will help you when you get stuck. It's like having a map of where you need to go.

## How to push through when you're stuck

- RELAX
  - Getting lots of practice really helps make this part easier.
- Don't start googling stuff randomly (even if they say you can). This breaks your focus and will make it harder for you to think critically.
- Try to understand the problem. This is the hardest part.
  - What are they asking you to do? Are you sure?
  - What are you trying to do? Is it what they're asking?
- Use whatever tools you know to start debugging.
  - HTML inspector
  - Network tab
  - REPL
  - console.log everything (when in doubt, log it out!).
- Ask for clarification if you're not sure about something
- Explain what you're trying to do
- Google when you forget stuff that's easy to look up, like function syntax/usage/argument order
- Don't google what they asked you right in front of them
