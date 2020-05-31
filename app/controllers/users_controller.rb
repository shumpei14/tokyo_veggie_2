class UsersController < ApplicationController
	before_action :authenticate_user!
	def index
		@users = User.all
	end
	def show
		@user = User.find(prams[:id])
	end
end
