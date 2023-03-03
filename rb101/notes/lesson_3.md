## Lesson 3 Small Exercises

Q1) the method `.uniq`  
Q2) uses of `?` and `!` operators  
  -`!` and `?` at the end of a method is part of the method name, not Ruby syntax  
  - `? :` is the ternary operator for `if..else`  
  - `!<obj>` is used to turn any object into the opposite of their boolean equivalent  
  - `!!<obj>` turns an object into their boolean equivalent  

Q3) method `gsub!` aka **global substitute**  
Q4) methods `delete(obj)` and `delete_at(idx)`  
Q5) `(10..100).cover?(42)` vs. `(10..100).to_a.include?(42)` is less efficient but solves the problem also  
Q6) Inserting to the beginning of a string  
  1. `famous_words.prepend("Four score and")  
  2. `"Four score and " << famous_words`  
  3. `famous_words.insert(0, "Four score and ")`  

