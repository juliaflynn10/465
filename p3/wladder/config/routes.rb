Rails.application.routes.draw do
	
	root "home#index"

	get '/guesses', to: "home#show"

end
