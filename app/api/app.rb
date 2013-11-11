class App < Grape::API
  format          :json
  default_format  :json

  mount V1::App
end
