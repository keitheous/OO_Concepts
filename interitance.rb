=begin

Inheritance
-----------

* relation between two classes.
* applicable concept => all cats are mammals, all mammals are animals
* benefits? classes lower down the heiracy gets the features of those higher up.
* in Ruby, a class can only inherit from one class, diff in other languages.

=end

class Mammal
  def breathe
    puts 'inhale and exhale'
  end
end

class Cat < Mammal
  def speak
    puts 'Meowth!'
  end
end

=begin

irb(main):012:0> jerry = Cat.new
=> #<Cat:0x00007fbed38c91c0>

irb(main):013:0> jerry.breathe
inhale and exhale

irb(main):014:0> jerry.speak
Meowth!

Terminology time, smaller class is known as subclass(derived or child class),
larger class is known as super-class/base class/parent class

In some cases, certain properties of super-class should not be inherited by
subclass, therefore we override!

=end

class Bird
  def preen
    puts 'I am cleaning my feathers!'
  end

  def fly
    puts 'I am flying'
    puts 'takes off'
  end
end

class Penguin < Bird
  def fly
    puts 'Sorry, we dun fly, we swim'
    puts 'Spash!'
  end
end

=begin


irb(main):032:0> eagle = Bird.new
=> #<Bird:0x00007fbed40ce8e8>

irb(main):033:0> eagle.preen
I am cleaning my feathers!

irb(main):034:0> eagle.fly
I am flying
takes off


then there is this..


irb(main):035:0> happy_feet = Penguin.new
=> #<Penguin:0x00007fbed40a5178>

I am cleaning my feathers!

irb(main):037:0> happy_feet.fly
Sorry, we dun fly, we swim
Spash!


The use of inheritance is sometimes called differential programming.
It is used with this symbol "<"

a class can inherit from a class that inherits from
another class which inherits from another class,
but a single class can not inherit from many classes at once
A < B < C < D and not X < Y & Z

Now lets have a look at Inheritance and Instance Variables
=end

class Doggie
  def initialize(breed)
    @breed = breed
  end
end

class Poodle < Doggie
  def initialize(breed, name)
    super(breed)
    @name = name
  end

  def to_s
    "#{@name} is a #{@breed}"
  end
end

=begin
Poodle.new('french', 'timothee').to_s
=> "timothee is a french"

calling super basically calls the the METHOD of the superclass first, which can
included WITHIN the method of the child class

consider this
=end

class Human
  def identify
    puts 'I am Human.'
  end
end

class Daughter < Human
  def identify
    super
    puts 'My name is Abigail'
  end
end

=begin
irb(main):108:0> my_daughter = Daughter.new
=> #<Daughter:0x00007fbed40cce30>

irb(main):109:0> my_daughter.identify
I am Human.
My name is Abigail
=end
