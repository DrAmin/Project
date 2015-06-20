class UsersController < ApplicationController

	def list
		@users=User.find(params[:id])

	end
end
