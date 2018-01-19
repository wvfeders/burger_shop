require "sinatra"
require_relative "burger_shop_program.rb"

get '/' do
	erb :burger_shop_home
end

post '/orders' do
	hamburgers = params[:hamburgers]
	cheeseburgers = params[:cheeseburgers]
	hotdogs = params[:hotdogs]
	chilidogs = params[:chilidogs]
	
	puts hamburgers, cheeseburgers

	redirect 'order_result?hamburgers=' + hamburgers + '&cheeseburgers=' + cheeseburgers + '&hotdogs=' + hotdogs + '&chilidogs=' + chilidogs

end	

 get '/order_result' do
	hamburgers = params[:hamburgers]
	cheeseburgers = params[:cheeseburgers]
	hotdogs = params[:hotdogs]
	chilidogs = params[:chilidogs]


 	erb :results, :locals => {:hamburgers => hamburgers, :cheeseburgers => cheeseburgers, :hotdogs => hotdogs, :chilidogs => chilidogs}
 end	