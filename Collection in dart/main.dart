// Collection in dart 
// collection types
// 1 fixed list
// .1 collection operator 
// .2 seperad operator 
// 2 set 
// 3 map  

// fixet list 
main(){
  list <int> = larr =(3);
  laar [0] = 20;
  print (larr [1]);
}


// Lists
// Perhaps the most common collection in 
// nearly every programming language is the array,
//  or ordered group of objects. In Dart, arrays are List objects, so most people just call them lists.
// Dart list literals are denoted by a comma separated list of expressions or values, enclosed in square brackets ([]). Here’s a simple Dart list:

var list = [1, 2, 3];

var list = [
  'Car',
  'Boat',
  'Plane',
];

// Spread operators
// Dart supports the spread operator (...) and the null-aware spread operator (...?), which provide a concise way to insert multiple values into a collection.

// For example, you can use the spread operator (...) to insert all the values of a list into another list:

var list = [1, 2, 3];
var list2 = [0, ...list];
assert(list2.length == 4);

// Collection operators
// Dart also offers collection if and collection for, which you can use to build collections using conditionals (if) and repetition (for).

// Here’s an example of using collection if to create a list with three or four items in it:

var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
// Here’s an example of using collection for to manipulate the items of a list before adding them to another list:

var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
assert(listOfStrings[1] == '#1');

// Sets
// A set in Dart is an unordered collection of unique items. Dart support for sets is provided by set literals and the Set type.

// Here is a simple Dart set, created using a set literal:

var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

// Add items to an existing set using the add() or addAll() methods:

var elements = <String>{};
elements.add('fluorine');
elements.addAll(halogens);
Use .length to get the number of items in the set:

var elements = <String>{};
elements.add('fluorine');
elements.addAll(halogens);
assert(elements.length == 5);
// To create a set that’s a compile-time constant, add const before the set literal:

final constantSet = const {
  'fluorine',
  'chlorine',
  'bromine',
  'iodine',
  'astatine',
};
// 

// Maps
// In general, a map is an object that associates keys and values. Both keys and values can be any type of object. Each key occurs only once, but you can use the same value multiple times. Dart support for maps is provided by map literals and the Map type.

// Here are a couple of simple Dart maps, created using map literals:

var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};