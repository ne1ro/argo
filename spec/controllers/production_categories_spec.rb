require 'rails_helper'

RSpec.describe ProductionCategoriesController do
  let!(:production_category) { create :production_category }

  describe 'GET #index' do
    before { get :index }

    it { is_expected.to respond_with(:ok) }

    it 'assigns @production_categories' do
      expect(assigns(:production_categories)).to eq([production_category])
    end
  end

  describe 'POST #create' do
    context 'with valid parameters' do
      before do
        post :create, production_category: attributes_for(:production_category)
      end

      it { is_expected.to redirect_to production_categories_path }
      it { is_expected.to set_flash[:success] }
    end

    context 'with invalid parameters' do
      before { post :create, production_category: { name: nil } }

      it { is_expected.to redirect_to production_categories_path }
      it { is_expected.to set_flash[:error] }
    end
  end

  describe 'PATCH #update' do
    context 'with valid parameters' do
      before do
        patch :update, id: production_category.id,
                       production_category: { name: 'test' }
      end

      it { is_expected.to redirect_to production_categories_path }

      it 'changes parameter' do
        expect(assigns(:production_category).name).to eq('test')
      end
    end

    context 'with invalid parameters' do
      before do
        patch :update, id: production_category.id,
                       production_category: { name: nil }
      end

      it { is_expected.to redirect_to production_categories_path }
      it { is_expected.to set_flash[:error] }
    end
  end

  describe 'DELETE #destroy' do
    context 'with existed id' do
      before { delete :destroy, id: production_category.id }

      it { is_expected.to redirect_to production_categories_path }
      it { is_expected.to set_flash[:success] }
    end
  end
end
