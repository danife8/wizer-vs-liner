# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/non_mutants' do
  # This should return the minimal set of attributes required to create a valid
  # NonMutant. As you add validations to NonMutant, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # NonMutantsController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) do
    {}
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      NonMutant.create! valid_attributes
      get non_mutants_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      non_mutant = NonMutant.create! valid_attributes
      get non_mutant_url(non_mutant), as: :json
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new NonMutant' do
        expect do
          post non_mutants_url,
               params: { non_mutant: valid_attributes }, headers: valid_headers, as: :json
        end.to change(NonMutant, :count).by(1)
      end

      it 'renders a JSON response with the new non_mutant' do
        post non_mutants_url,
             params: { non_mutant: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new NonMutant' do
        expect do
          post non_mutants_url,
               params: { non_mutant: invalid_attributes }, as: :json
        end.not_to change(NonMutant, :count)
      end

      it 'renders a JSON response with errors for the new non_mutant' do
        post non_mutants_url,
             params: { non_mutant: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested non_mutant' do
        non_mutant = NonMutant.create! valid_attributes
        patch non_mutant_url(non_mutant),
              params: { non_mutant: new_attributes }, headers: valid_headers, as: :json
        non_mutant.reload
        skip('Add assertions for updated state')
      end

      it 'renders a JSON response with the non_mutant' do
        non_mutant = NonMutant.create! valid_attributes
        patch non_mutant_url(non_mutant),
              params: { non_mutant: new_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end

    context 'with invalid parameters' do
      it 'renders a JSON response with errors for the non_mutant' do
        non_mutant = NonMutant.create! valid_attributes
        patch non_mutant_url(non_mutant),
              params: { non_mutant: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested non_mutant' do
      non_mutant = NonMutant.create! valid_attributes
      expect do
        delete non_mutant_url(non_mutant), headers: valid_headers, as: :json
      end.to change(NonMutant, :count).by(-1)
    end
  end
end
