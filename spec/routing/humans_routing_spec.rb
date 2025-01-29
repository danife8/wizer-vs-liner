# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HumansController do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/humans').to route_to('humans#index')
    end

    it 'routes to #show' do
      expect(get: '/humans/1').to route_to('humans#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/humans').to route_to('humans#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/humans/1').to route_to('humans#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/humans/1').to route_to('humans#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/humans/1').to route_to('humans#destroy', id: '1')
    end
  end
end
