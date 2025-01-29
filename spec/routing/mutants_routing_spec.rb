# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MutantsController do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/mutants').to route_to('mutants#index')
    end

    it 'routes to #show' do
      expect(get: '/mutants/1').to route_to('mutants#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/mutants').to route_to('mutants#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/mutants/1').to route_to('mutants#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/mutants/1').to route_to('mutants#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/mutants/1').to route_to('mutants#destroy', id: '1')
    end
  end
end
