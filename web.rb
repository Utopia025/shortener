require 'sinatra'
require 'haml'


get '/'do 
	haml :index
end

get '/hello' do
	"Hello"
end

post '/shorten' do
	random = rand(100000)
	puts "Random num = #{random}"

	puts "Your Long URL is: #{params[:long_url]}"
end
