require File.join(Rails.root, 'app/api/pomodorama.rb')

PomodoramaAPI::Application.routes.draw do
  mount Pomodorama::API::App => '/api'
end
