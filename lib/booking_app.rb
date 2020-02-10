require 'sinatra'
require_relative './booking_system'

booking_system = BookingSystem.new
booking_system.configure(10, 6)
set :booking_system, booking_system

get "/" do
  erb :index
end

post "/booking" do
  seats = params['seats'].to_i
  ok = settings.booking_system.book_seats(seats)
  redirect ok ? '/confirmation' : '/error'
end

get "/confirmation" do
  "OK"
end

get "/error" do
  "KO"
end
