class BooksController < ApplicationController
	def list
		@b = Book.find(1)
	end
end
