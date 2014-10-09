class HomeController < ApplicationController
	load "#{Rails.root}/lib/ladder.rb"
	def index
   	 # don't need to do anything here
 	 end

  	def show
		@guesses_array = params.permit(:step0, :step1, :step2, :step3, :step4, :step5, :step6).map{|guess| guess[1]}
	end
end

