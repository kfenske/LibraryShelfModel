class Library
	attr_accessor :shelves

 	def initialize
 		@shelves = { 1 => [], 2 => [], 3 => [], 4 => [], 5 => [], 6 => [], 7 => [], 8 => [], 9 => [], 10 => [], 11 => [], 12 => [], 13 => [], 14 => [], 15 => [], }
 	end

 	def book_count(shelves)
 		@shelves.each do |shelfId, book|
 			if book != nil
 				puts book
 			end
 		end
 	end

 	def shelf_count
 		@shelves.count
 	end
end

class Shelf
	attr_accessor :shelves

	def initialize(shelves)
		@shelves = shelves
	end

	def books_on_shelf
		print "Which shelf would you like to look at?"
		@shelfId = Integer(gets.chomp)

		if @shelfId < 1
			puts "Not a valid shelf number"
		elsif @shelfId > 15
			puts "Not a valid shelf number"
		else
			puts @shelves[@shelfId]
		end
	end
end

class Book
	attr_accessor :shelves
	
	def initialize(title, shelves)
		@title = title
		@shelfId = 0
		@shelves = shelves
	end

	def enshelf
		print "Which shelf would you like to put this book on?"
		@shelfId = Integer(gets.chomp)

		if @shelfId < 1
			puts "I'm sorry, please choose a shelf number between 1 and 15."
		elsif @shelfId > 15
			puts "I'm sorry, please choose a shelf number between 1 and 15."
		else
			puts "The book #{@title} was placed on shelf " + @shelfId.to_s + "."
			@bookToBeAdded = { @shelfId => "#{@title}" }
			@shelves = @shelves.merge(@bookToBeAdded){|key,oldbook,newbook| [*oldbook].to_a + [*newbook].to_a }
		end
	end

	def unshelf
		@shelfId = 0
		@shelves.each do |key, value|
			value.delete(@title)
		end
		puts "The book #{@title} was removed from the shelf."
	end
end

# Begin the program by creating the Library 
# library = Library.new

# The Library is aware of the number of shelves
# library = Library.shelf_count
# => 15

# Create a new book and assign it to a shelf
# book1 = Book.new("Book Title", library.shelves)
# book1.enshelf
# "Which shelf would you like to put this book on?"
# 3
# { 3 => "Book Title" }

# Merge the book and shelf with the library
# library.shelves = book1.shelves

# Add a couple more books, then check to see what books are in the library
# library.book_count(library.shelves)
# => list of books

# Check to see what books are located on a shelf
# shelf = Shelf.new(library.shelves)
# shelf.books_on_shelf
# Which shelf would you like to look at?
# 3
# => "Book Title"

# Remove the book from the shelf
# book1 = Book.new("title of book you wish to remove", library.shelves)
# book1.unshelf
# "The book "title of book you wish you remove" was removed from the shelf."
# library.shelves
# => @shelves hash without the book title


# Enhancements to this program could include:
# 	Merging the shelves in the Book class with the Library class automatically
#
# 	Another implementation might be to have the Library create the enshelf method, rather than the Book.
#	This would encapsulate the process of putting a book on a shelf through the Library class.
#
#   Create a Read Me that has the menu options for each method.