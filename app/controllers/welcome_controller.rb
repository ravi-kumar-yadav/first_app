class WelcomeController < ApplicationController

	def index
		render :json => {'name' => 'Ram', 'place' => 'Mumbai' }
	end	

end
