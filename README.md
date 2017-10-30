# Ruby Hangman

To run, `ruby hangman.rb`

## Brief

Your task is to make a hidden word game:

* A word or phrase is entered, then hidden from a player, who has to guess the letters one by one.
* The player starts with 6 lives, and loses a life every time an incorrect letter is guessed.
* Every time a player guesses a correct letter, its position is revealed in the hidden word.
* Play continues until the player loses all their lives, or all letters are revealed.

### Example walkthrough

A user enters a word or phrase:

```
wheel of fortune
```

This is then hidden or obscured, and presented to the player:

```
***** ** *******
```

The player guesses "e", and the letter is revealed:

```
**ee* ** ******e
```

The player guesses "x" and loses a life.

The player guesses "f" and its position is revealed, along with the "e" previously guessed:

```
**ee* *f f*****e
```
