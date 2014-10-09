class HomeController < ApplicationController
	load "#{Rails.root}/lib/ladder.rb"
	def index
   	 # don't need to do anything here
 	 end

  	def show
		@guesses_array = params[]
	end
end

