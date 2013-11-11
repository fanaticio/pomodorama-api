module V1
  class App < Grape::API
    version 'v1', using: :path

    mount V1::Pomodoros
  end
end
