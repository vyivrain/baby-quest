Rails.application.routes.draw do
  root to: 'home#index'

  get '/quests/:id', to: 'home#show', constraints: { id: /(cbd456b8f38004a8)|(081c07e4438bace1)|(f87f2b2b1222f818)|(a9491f0d95dca96c)|(5eaf308ea58d7f50)|(result_675b289348d8ccfb)/ }, as: :quest
  post '/quests/:quest_id', to: 'quests#answer', as: :quest_validator
end
