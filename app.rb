require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require './models/person'
require './models/event'
require './models/registration'

get '/' do
	erb :index
end

get '/persons' do
	@people = Person.all
	erb :persons
end

get '/person/new' do
	erb :add_person
end

post '/person/new/submit' do
	@person = Person.new(params[:person])
	if @person.save
		redirect '/persons'
	else
		"Sorry, there was an error!"
	end
end

get '/events' do
	@events = Event.all
	erb :events
end

get '/event/new' do
	erb :add_event
end

post '/event/new/submit' do
	@event = Event.new(params[:event])
	if @event.save
		redirect '/events'
	else
		"Sorry, there was an error!"
	end
end

get '/registrations' do
	@events = Event.all
	@people = Person.all
	@registrations = Registration.all
	erb :registrations
end

get '/registration/new' do
	@events = Event.all
	@people = Person.all
	erb :add_registration
end

post '/registration/new/submit' do
	@registration = Registration.new(params[:registration])
	if @registration.save
		redirect '/registrations'
	else
		"Sorry, there was an error!"
	end
end