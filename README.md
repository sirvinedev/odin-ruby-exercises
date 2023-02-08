# odin-ruby-exercises
Cpmpleted solutions for [The Odin Project's Ruby course](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby) exercises.

## Project: Caeser Cipher
Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string.

```Ruby
> caesar_cipher("What a string!", 5) 
=> "Bmfy f xywnsl!"
```

## Project: Sub Strings
Implement a method `#sub_strings` that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

```Ruby
> dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

> sub_string("Howdy partner, sit down! How's it going?", dictionary) 
=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
```

## Project: Stock Picker
Implement a method `#stock_picker` that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

```Ruby
> stock_picker([17,3,6,9,15,8,6,1,10])
=> [1,4]  # for a profit of $15 - $3 == $12
```

## Project: Bubble Sort
Build a method `#bubble_sort` that takes an array and returns a sorted array. It must use the bubble sort methodology (using `#sort` would be pretty pointless, wouldn’t it?).

```Ruby
> bubble_sort([4,3,78,2,0,2])
=> [0,2,2,3,4,78]
```