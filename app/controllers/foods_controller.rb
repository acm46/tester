class FoodsController < ApplicationController
  def search
  	foods = Food.all
  	@food_names = []
  	foods.each do |food|
  		@food_names.push(food.food_name)
  	end
  end

  def view
  	if params[:query] != nil
      search_name = params[:query]
    	@food_to_disp = Food.find_by_food_name(search_name)
    	@food_attrs = Food.column_names
    else
      @food_to_disp = Food.find(params[:food_id])
      @food_attrs = Food.column_names
    end
  end
end
