module Pomodorama
  module API
    module V1
      class App < Grape::API
        version 'v1', using: :path

        mount Pomodorama::API::V1::Pomodoros
      end
    end
  end
end
