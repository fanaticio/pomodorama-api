module Pomodorama
  module API
    class App < Grape::API
      format          :json
      default_format  :json

      mount API::Pomodorama::V1::App
    end
  end
end
