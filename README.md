[Stubbed from Starter Project](https://github.com/londonappbrewery/xylophone-flutter)

# Xylophone 🎹

## Our Goal

In this tutorial we will be diving into more Dart programming concepts and learning how to use open 
source Flutter packages. By the end of this module, you should be comfortable using Flutter packages and 
building repeated widgets.

## Review Of Day 1

Day 1 of 100 saw me picking back up from a Udemy Course by Angela Yu - "The Complete 2020 Flutter 
Development Bootcamp with Dart".⁠

I've started and stopped this course about 10 times in the past and this is the 4th time alone, that I've 
completed the Xylophone App! This time round I decided to improve on the code, implementing a Map of key/
value pairs to be used to build the individual keys of the Xylophone. Storing the colour of the note. 
Then in the XylophoneApp's build method, iterate over the Map of notes, building a key for each one.⁠

It's only a small change, but has removed the need to copy & paste the buildKey function for each key to 
render.⁠

I went with this route because if this app were to ever be developed further, one thing that would not 
change, or change much would be the notes played. There's a finite number of notes that would be played 
so configurability isn't needed there. They could even be declared as constants because the likelihood of 
them changing is minimal.
