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

 post '/payment' do
	tamount = params[:tamount]
	tax = params[:tax]
	total_with_tax = params[:total_with_tax]
	payment_amount = params[:payment_amount]
	hamburgers = params[:hamburgers]
	cheeseburgers = params[:cheeseburgers]
	hotdogs = params[:hotdogs]
	chilidogs = params[:chilidogs]

	redirect 'make_change?tamount=' + tamount + '&tax=' + tax + '&total_with_tax=' + total_with_tax + '&payment_amount=' + payment_amount + '&hamburgers=' + hamburgers + '&cheeseburgers=' + cheeseburgers + '&hotdogs=' + hotdogs + '&chilidogs=' + chilidogs
end

get '/make_change' do
	tamount = params[:tamount]
	tax = params[:tax]
	total_with_tax = params[:total_with_tax]
	payment_amount = params[:payment_amount]
	hamburgers = params[:hamburgers]
	cheeseburgers = params[:cheeseburgers]
	hotdogs = params[:hotdogs]
	chilidogs = params[:chilidogs]
	erb :final, :locals => {:tamount => tamount, :tax => tax, :total_with_tax => total_with_tax, :payment_amount => payment_amount, :hamburgers => hamburgers, :cheeseburgers => cheeseburgers, :hotdogs => hotdogs, :chilidogs => chilidogs}
end	