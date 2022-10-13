# INHERITANCE

```
class ChildClass < ParentClass
end

class SubClass < SuperClass
end
```

# CLASS METHODS

# instance method - Needs an instance of the class to call it on
```rb
restaurant.name
restaurant.open?
```

# class method - Can be called without an instance of the class
```rb
JSON.parse
CSV.open
Time.now
Date.today
File.read

Restaurant.categories # => ['japanese', 'burgers', 'italian', 'mexican']
Car.available_colors # => ['black', 'red', 'white']
```