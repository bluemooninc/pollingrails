Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html\
  namespace :api, {format: 'json'} do
    namespace :like do
      get "/" , :action => "index"
    end
    namespace :ranking do
      get "/" , :action => "index"
    end
  end
end