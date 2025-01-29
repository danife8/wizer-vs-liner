# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DnasController do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/dnas').to route_to('dnas#index')
    end

    it 'routes to #show' do
      expect(get: '/dnas/1').to route_to('dnas#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/dnas').to route_to('dnas#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/dnas/1').to route_to('dnas#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/dnas/1').to route_to('dnas#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/dnas/1').to route_to('dnas#destroy', id: '1')
    end
  end
end
