require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative './models/student.rb'
require_relative './models/house.rb'

get '/' do
  erb ( :index )
end

get '/list' do
  @list = Student.all()
  erb ( :list )
end

get '/list_house' do
  @list = House.all()
  erb ( :list_house )
end

get '/find_student' do
  @student = Student.find(params[:id])
  erb ( :search )
end

get '/find_house' do
  @house = House.find(params[:id])
  erb ( :search_house )
end

get '/enrol' do
  @houses = House.all()
  erb ( :create )
end

post '/new' do
  @student = Student.new(params)
  @student.save()
  erb ( :congrats )
end
