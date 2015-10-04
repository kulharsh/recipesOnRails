class Recipe 
	include HTTParty

	host_port = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'food2fork.com/'
	key_value = ENV['FOOD2FORK_KEY'] ||'b5e3ced515bf4cadfa3fa62695b83486'
	default_params key: key_value
	format :json
	base_uri "http://#{host_port}/api/search"
	def self.for term
		get("",query:{q: term})
	end
end
