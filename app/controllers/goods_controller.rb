class GoodsController < ApplicationController
	def view
		doc = Nokogiri::XML(File.open("doc/usdafake.rdf"))
		@items = doc.xpath('/rdf:RDF/*') # rdf:Description['+params[:q].to_s()+']/*')
		@items.each do |item|
			@attrs = item.children()
			@attrs.each do |attr|
				if (attr.name == "food_name" && attr.content == params[:query].to_s())
					@result = @attrs
				end
			end
		end	




		# @blahstwo = @blahs[params[:q].to_i()]
		# @results = @blahstwo.children()

		# @results = @blahs.children()[params[:q].to_i()]
		# rdf:Description['+params[:q].to_s()+']/*')
	end

	def search
	end
end

