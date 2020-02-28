require 'rspec'
require_relative 'book'
require_relative 'library'

# gem install rspec

# class called book, title, author, pages, ability to read pages

describe 'Book' do

  it 'has to be real' do
    expect{ Book.new }.to_not raise_error
  end

  it 'has a title' do
    my_book = Book.new
    my_book.title = 'Catch-22'
    expect(my_book.title).to eq 'Catch-22'
    expect(my_book.title).to be_a String
  end

  it 'has an author' do
    my_book = Book.new
    expect(my_book.author).to eq 'anonymous'
    expect(my_book.author).to be_a String

    catch = Book.new 'Joseph Heller'
    expect(catch.author).to eq 'Joseph Heller'
  end

  it 'can give the current page' do
    my_book = Book.new
    expect(my_book.page).to eq 1
    expect(my_book.page).to be_a Integer
  end

  it 'can read pages' do
    my_book = Book.new
    expect{ my_book.read 10 }.to change{ my_book.page }.from(1).to(11)
  end

end

# Stories: Library is a thing, it can have an array of books, books can be added to library

describe "Library" do

  it 'has to be real' do
    expect{ Library.new }.to_not raise_error
  end

  it 'has an array of books' do
    my_library = Library.new
    my_book = Book.new
    expect(my_library.book_collection).to be_a Array
    my_library.add_books my_book
    expect(my_library.book_collection).not_to be_empty
  end


end
