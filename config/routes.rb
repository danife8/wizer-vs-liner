# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :humans
      resources :non_mutants, only: %i[index show]
      resources :mutants, only: %i[index show]
    end
  end
end
