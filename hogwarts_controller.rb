require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative './models/student.rb'

get '/' do
  erb ( :index )
end

get '/list' do
  @list = Student.all()
  erb ( :list )
end

get '/find_student' do
  @student = Student.find(params[:id])
  erb ( :search )
end

get '/enrol' do
  erb ( :create )
end

post '/new' do
  @student = Student.new(params)
  @student.save()
  erb ( :congrats )
end
