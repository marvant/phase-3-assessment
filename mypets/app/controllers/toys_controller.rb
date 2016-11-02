class ToysController < ApplicationController
	def index
			@pet = Pet.find(params[:pet_id])
			@toys = @pet.toys
			
			# respond_to do |format|
			# 	format.html
			# 	format.json { render json: @pet }
			# end

			if request.xhr?
				p 'getting here'
				# render :partial => 'toy'
				# render json: @pet
				render json: @toys
			end

	end

end
