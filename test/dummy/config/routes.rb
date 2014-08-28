Rails.application.routes.draw do

  mount Cardapi::Engine => "/cardapi"
end
