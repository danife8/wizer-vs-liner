# frozen_string_literal: true

require 'rails_helper'

RSpec.describe NonMutantsController do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/non_mutants').to route_to('non_mutants#index')
    end

    it 'routes to #show' do
      expect(get: '/non_mutants/1').to route_to('non_mutants#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/non_mutants').to route_to('non_mutants#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/non_mutants/1').to route_to('non_mutants#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/non_mutants/1').to route_to('non_mutants#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/non_mutants/1').to route_to('non_mutants#destroy', id: '1')
    end
  end
end
