#Code Fellows Library Shelf Model

Use object-oriented Ruby to model a public library (w/ three classes: Library, Shelf, & Book). The library should be aware of a number of shelves. Each shelf should know what books it contains. Make the book object have "enshelf" and "unshelf" methods that control what shelf the book is sitting on. The library should have a method to report all books it contains. Note: this should *not* be a Rails app - just a single file with three classes (plus commands at the bottom showing it works) is all that is needed. In addition to pushing this ruby file to your Github account, please also paste into http://rubyfiddle.com/ and send us the saved URL.

Example Output

Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

C:\Users\Kayla\Documents\GitHub>cd libraryshelfmodel


irb(main):002:0> library = Library.new

=> #<Library:0x2243808 @shelves={1=>[], 2=>[], 3=>[], 4=>[], 5=>[], 6=>[], 7=>[], 8=>[], 9=>[], 10=>[], 11=>[], 12=>[], 13=>[], 14=>[], 15=>[]}>


irb(main):003:0> book1 = Book.new("Da Vinci Code", library.shelves)

=> #<Book:0x23d4968 @title="Da Vinci Code", @shelfId=0, @shelves={1=>[], 2=>[], 3=>[], 4=>[], 5=>[], 6=>[], 7=>[], 8=>[], 9=>[], 10=>[], 11=>[], 12=>[], 13=>[], 14=>[], 15=>[]}>


irb(main):004:0> book1.enshelf

Which shelf would you like to put this book on?3

The book Da Vinci Code was placed on shelf 3.

=> {1=>[], 2=>[], 3=>["Da Vinci Code"], 4=>[], 5=>[], 6=>[], 7=>[], 8=>[], 9=>[], 10=>[], 11=>[], 12=>[], 13=>[], 14=>[], 15=>[]}


irb(main):005:0> library.shelves = book1.shelves

=> {1=>[], 2=>[], 3=>["Da Vinci Code"], 4=>[], 5=>[], 6=>[], 7=>[], 8=>[], 9=>[], 10=>[], 11=>[], 12=>[], 13=>[], 14=>[], 15=>[]}

irb(main):006:0> book2 = Book.new("A Thousand Splendid Suns", library.shelves)

=> #<Book:0x242cd48 @title="A Thousand Splendid Suns", @shelfId=0, @shelves={1=>[], 2=>[], 3=>["Da Vinci Code"], 4=>[], 5=>[], 6=>[], 7=>[], 8=>[], 9=>[], 10=>[], 11=>[], 12=>[], 13=>[], 14=>[], 15=>[]}>


irb(main):007:0> book2.enshelf

Which shelf would you like to put this book on?8

The book A Thousand Splendid Suns was placed on shelf 8.

=> {1=>[], 2=>[], 3=>["Da Vinci Code"], 4=>[], 5=>[], 6=>[], 7=>[], 8=>["A Thousand Splendid Suns"], 9=>[], 10=>[], 11=>[], 12=>[], 13=>[], 14=>[], 15=>[]}


irb(main):008:0> library.shelves = book2.shelves

=> {1=>[], 2=>[], 3=>["Da Vinci Code"], 4=>[], 5=>[], 6=>[], 7=>[], 8=>["A Thousand Splendid Suns"], 9=>[], 10=>[], 11=>[], 12=>[], 13=>[], 14=>[], 15=>[]}


irb(main):009:0> book3 = Book.new("The Affair", library.shelves)

=> #<Book:0x21ea540 @title="The Affair", @shelfId=0, @shelves={1=>[], 2=>[], 3=>["Da Vinci Code"], 4=>[], 5=>[], 6=>[], 7=>[], 8=>["A Thousand Splendid Suns"], 9=>[], 10=>[], 11=>[], 12=>[], 13=>[], 14=>[], 15=>[]}>


irb(main):010:0> book3.enshelf

Which shelf would you like to put this book on?13

The book The Affair was placed on shelf 13.

=> {1=>[], 2=>[], 3=>["Da Vinci Code"], 4=>[], 5=>[], 6=>[], 7=>[], 8=>["A Thousand Splendid Suns"], 9=>[], 10=>[], 11=>[], 12=>[], 13=>["The Affair"], 14=>[], 15=>[]}


irb(main):011:0> library.shelves = book3.shelves

=> {1=>[], 2=>[], 3=>["Da Vinci Code"], 4=>[], 5=>[], 6=>[], 7=>[], 8=>["A Thousand Splendid Suns"], 9=>[], 10=>[], 11=>[], 12=>[], 13=>["The Affair"], 14=>[], 15=>[]}


irb(main):012:0> book4 = Book.new("The Lost Symbol", library.shelves)

=> #<Book:0x23b60e0 @title="The Lost Symbol", @shelfId=0, @shelves={1=>[], 2=>[], 3=>["Da Vinci Code"], 4=>[], 5=>[], 6=>[], 7=>[], 8=>["A Thousand Splendid Suns"], 9=>[], 10=>[], 11=>[], 12=>[], 13=>["The Affair"], 14=>[], 15=>[]}>


irb(main):013:0> book4.enshelf

Which shelf would you like to put this book on?3

The book The Lost Symbol was placed on shelf 3.

=> {1=>[], 2=>[], 3=>["Da Vinci Code", "The Lost Symbol"], 4=>[], 5=>[], 6=>[], 7=>[], 8=>["A Thousand Splendid Suns"], 9=>[], 10=>[], 11=>[], 12=>[], 13=>["The Affair"], 14=>[], 15=>[]}


irb(main):014:0> library.shelves = book4.shelves

=> {1=>[], 2=>[], 3=>["Da Vinci Code", "The Lost Symbol"], 4=>[], 5=>[], 6=>[], 7=>[], 8=>["A Thousand Splendid Suns"], 9=>[], 10=>[], 11=>[], 12=>[], 13=>["The Affair"], 14=>[], 15=>[]}


irb(main):015:0> library.shelf_count

=> 15


irb(main):016:0> library.book_count(library.shelves)

Da Vinci Code

The Lost Symbol

A Thousand Splendid Suns

The Affair

=> {1=>[], 2=>[], 3=>["Da Vinci Code", "The Lost Symbol"], 4=>[], 5=>[], 6=>[], 7=>[], 8=>["A Thousand Splendid Suns"], 9=>[], 10=>[], 11=>[], 12=>[], 13=>["The Affair"], 14=>[], 15=>[]}


irb(main):017:0> shelf = Shelf.new(library.shelves)

=> #<Shelf:0x247eb40 @shelves={1=>[], 2=>[], 3=>["Da Vinci Code", "The Lost Symbol"], 4=>[], 5=>[], 6=>[], 7=>[], 8=>["A Thousand Splendid Suns"], 9=>[], 10=>[], 11=>[], 12=>[], 13=>["The Affair"], 14=>[], 15=>[]}>


irb(main):018:0> shelf.books_on_shelf

Which shelf would you like to look at?3

Da Vinci Code

The Lost Symbol

=> nil


irb(main):019:0> shelf.books_on_shelf

Which shelf would you like to look at?7

=> nil


irb(main):020:0> shelf.books_on_shelf

Which shelf would you like to look at?8

A Thousand Splendid Suns

=> nil


irb(main):021:0> book1 = Book.new("The Lost Symbol", library.shelves)

=> #<Book:0x224a3a8 @title="The Lost Symbol", @shelfId=0, @shelves={1=>[], 2=>[], 3=>["Da Vinci Code", "The Lost Symbol"], 4=>[], 5=>[], 6=>[], 7=>[], 8=>["A Thousand Splendid Suns"], 9=>[], 10=>[], 11=>[], 12=>[], 13=>["The Affair"], 14=>[], 15=>[]}>


irb(main):022:0> book1.unshelf

The book The Lost Symbol was removed from the shelf.

=> nil


irb(main):023:0> library.shelves

=> {1=>[], 2=>[], 3=>["Da Vinci Code"], 4=>[], 5=>[], 6=>[], 7=>[], 8=>["A Thousand Splendid Suns"], 9=>[], 10=>[], 11=>[], 12=>[], 13=>["The Affair"], 14=>[], 15=>[]}
