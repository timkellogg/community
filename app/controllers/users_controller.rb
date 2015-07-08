class UsersController < ApplicationController


	def show 
		@user = User.find(params[:id])
	end

	def edit
		respond_to do |format| 
			if current_user 
				format.html { render 'devise/registrations/edit' }
				# Need Json response 
			else 
				format.html { redirect_to root_url, notice: 'You can only modify your own profile' }
				# Need json response 
			end
		end
	end

	def update
	end

	def destroy
	end

end
