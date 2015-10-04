class Recipe 
	include HTTParty

	base_uri 'http://food2fork.com/api/search'
	default_params key:"b5e3ced515bf4cadfa3fa62695b83486"  
	format :json

	def self.for term
		get("",query:{q: term})
	end
end

