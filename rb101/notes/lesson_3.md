## Lesson 3 Small Exercises

### Easy 1
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
Q7) method `arr.flatten!`  
Q8) hash method `assoc(key) -> array or nil` returns the key value pair in a 2-d array  

### Easy 2
Q1) hash methods `hash[key] -> val` and `hash.key?(k) -> bool` and `hash.member?(key)`
Q2) differences between:  
  - `string.swapcase!` -- swaps the case in the string
  - `string.capitalize!` e.g. `"hello WORLD!".capitalize! -> "Hello world!"`
  - `string.downcase!`
  - `string.upcase!`
Q3) `hash1.merge!(hash2) -> hash1` merges two hashes together  
Q4) `string.match?(str)` vs `string.include?(str)`  
Q5) `['Hello', 'World'] == %w(Hello World) # => true`  
Q6) `str_arr.push(s) == str_arr << s == str_arr.append(s) == str_arr.concat(s)`  
Q7) pushing multiple words into a string array  
    ```
    flintstones.push("Dino").push("Hoppy") == flintstones << "Dino" << "Hoppy"
    flintstones.concat(%w(Dino Hoppy))
    ```
Q8) method `string.slice!(regexp) -> new_str or nil`  
    ```
    string = "Hello world, how are you doing?"
    string.slice!("/Hello.*world,/") #=> "Hello world,"
    string #=> " how are you doing?"
    ```
    book solution: `string.slice(0, string.index('world,'))`
Q9) `string.count('t') #=> number of lowercase t's in string`
Q10) `"hello world".center(13) #=> " hello world " # 11+2 spaces

### Medium 1
Q1) `10.times { |i| puts (" "*i + "The Flinstones Rock!" }`  
Q2) string concatenation using the `+` operator with an integer is an error. Must use `.to_s` method on the string or use `#{40 + 5}` string interpolation
Q3) Using a while loop to find factors of a given number
    ```
    def factors(num)
      divisor = num
      factors = []
      while divisor > 0
        factors << num/divisor if num%divisor == 0
        divisor -= 1
      end
      factors
    end
    ```
Q4) **IMPORTANT** Look over implementation and read solution.
Q5) **semi-impt** A method is trying to access a variable that is not defined in the method  
Q6) Using an instantiated number in a method that does not mutate the number.  
Q7) **IMPORTANT** Hash methods. Read through solution and understand it.  
Q8) Nested method calls  
Q9) Ternary operators  

### Medium 2

Q2) **impt** integers are *immutable* that is, the value of an integer object cannot be mutated. In Ruby, each in teger is a single immutable object (e.g., there can only ever be one integer `1` object, one integer `2` object, and so on.) so
  `a = 42, b = 42, c = 42` all reference the same object `42`
Q3) Review problems here before exam for sure **IMPT**

### Hard 1
Q1) When you initialize a local variable within an `if` clause, even if that `if` clause doesn't get executed, the local variable is initialized to nil. This also means that if-statements do not introduce scope.  
Q2) Referencing the original object. **need review**  
Q3)
