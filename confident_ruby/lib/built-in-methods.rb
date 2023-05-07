# Explicit vs Implicit Methods:

- Explict methods are more wider and versatile, like calling `#to_i` on a string.

```ruby
def some_method
  "123".to_i # -> 123
  "12a3".to_i   # => 12 (since it stops parsing when it encounters a non-numeric character)
end
```
- Implicit methods are not called directly on the object. Instead, they are called internally by certain methods that expect a specific data type. 

```ruby
def add_numbers(a, b)
  a = a.to_int
  b = b.to_int
  a + b
end

add_numbers("12", "34") # This will raise an error, because String does not have a to_int method
```

---
In summary, explicit conversions like #to_i are more flexible, 
allowing for a wider range of inputs but potentially introducing errors. 
---

---
Implicit conversions like #to_int are more strict, 
ensuring that the input is closer to what the method expects and helping catch potential issues earlier.
---
