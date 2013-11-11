Dir[Rails.root.join(__dir__, 'pomodorama/**/*.rb')].each { |filename| require filename }

module Pomodorama
  module API
    class App < Grape::API
      format          :json
      default_format  :json

      mount Pomodorama::API::V1::App
    end
  end
end
