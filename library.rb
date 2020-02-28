class Library
  def initialize
    @book_collection = []
  end
  def book_collection
    @book_collection
  end
  def add_books book
    @book_collection << book
  end
end
