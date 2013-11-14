module Pomodorama
  module API
    module V1
      class Tomatoes < Grape::API
        version 'v1'

        desc 'Returns a list of tomatoes'
        get '/tomatoes' do
          tomatoes = Pomodorama::Tomato.all
          present tomatoes, with: Pomodorama::API::Entities::Tomato
        end

        desc 'Returns a tomato'
        params do
          requires :id, type: String
        end
        get '/tomatoes/:id' do
          tomato = Pomodorama::Tomato.find(params[:id])
          present tomato, with: Pomodorama::API::Entities::Tomato
        end

      end
    end
  end
end
