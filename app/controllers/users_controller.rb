class UsersController < ApplicationController
	def new
	 @user = User.new
	end

	def create
	  @user = User.new(params[:user])
	  if @user.save
	  	session[:user_id] = @user.id
	    redirect_to root_url, :notice => "Signed up!"
	  else
	    render "new"
	  end
	end

	def view
		if !current_user
			redirect_to root_url, :notice => "You must be logged in"
		end
	end

	def new_food
		current_user.foods.push(Food.find(params[:food_id]))
		redirect_to profile_path
	end

	def delete_food
		current_user.foods.delete(Food.find(params[:food_id]))
		redirect_to profile_path
	end

end
