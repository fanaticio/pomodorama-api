Dir[Rails.root.join(__dir__, 'pomodorama/**/*.rb')].each { |filename| require filename }

module Pomodorama
  module API
    class App < Grape::API
      default_format  :json
      format          :json

      mount Pomodorama::API::V1::App
    end
  end
end
