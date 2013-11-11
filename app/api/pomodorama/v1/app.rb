Dir[Rails.root.join(__dir__, '**/*.rb')].each { |filename| require filename }

module Pomodorama
  module API
    module V1
      class App < Grape::API
        version 'v1', using: :path

        mount Pomodorama::API::V1::Tomatoes
      end
    end
  end
end
