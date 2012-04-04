class GoodsController < ApplicationController
	def view
		doc = Nokogiri::XML(File.open("doc/usda.xml"))
		@search_q = params[:query]
		mod_search = ""
		
		# Process query for ' and " characters
		@search_q.each_char do |i|
			if (i == '"')
				mod_search = mod_search+"\""
			else
				mod_search = mod_search + i
			end
		end

		@items = doc.xpath('/food_database/Description[food_name="'+@search_q+'"]/*')




		# @items.each do |item|
		# 	@attrs = item.children()
		# 	@attrs.each do |attr|
		# 		if (attr.name == "food_name" && attr.content == params[:query].to_s())
		# 			@result = @attrs
		# 		end
		# 	end
		# end	




		# @blahstwo = @blahs[params[:q].to_i()]
		# @results = @blahstwo.children()

		# @results = @blahs.children()[params[:q].to_i()]
		# rdf:Description['+params[:q].to_s()+']/*')
	end

	def search
		doc = Nokogiri::XML(File.open("doc/usda.xml"))
		@completions = doc.xpath('/food_database/Description/food_name')
		@names = Array.new
		@completions.each do |food|
			@names.push(food.content)
		end
	end
end

