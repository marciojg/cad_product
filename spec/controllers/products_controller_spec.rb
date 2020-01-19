# frozen_string_literal: true

RSpec.describe ProductsController, type: :controller do

  let(:valid_attributes) {
    FactoryBot.attributes_for(:product).merge(
      {
        combination: FactoryBot.create(:combination)
      }
    )
  }

  let(:invalid_attributes) {
    product = FactoryBot.attributes_for(:product)
    product['name'] = nil
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      product = Product.create! valid_attributes
      get :show, params: { id: product.to_param}
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      product = Product.create! valid_attributes
      get :edit, params: {id: product.to_param}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Product" do
        product = Product.create! valid_attributes
        post :create, params: { product: valid_attributes }
        expect(product).to be_persisted
      end

      it "redirects to the created product" do
        post :create, params: { product: valid_attributes }
        expect(response).to redirect_to(Product.last)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { name: 'Outra camiseta' }
      }

      it "updates the requested product" do
        product = Product.create! valid_attributes
        put :update, params: {id: product.to_param, product: new_attributes}
        product.reload
        expect(product).to be_persisted
      end

      it "redirects to the product" do
        product = Product.create! valid_attributes
        put :update, params: {id: product.to_param, product: valid_attributes}
        expect(response).to redirect_to(product)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested product" do
      product = Product.create! valid_attributes
      expect {
        delete :destroy, params: {id: product.to_param}
      }.to change(Product, :count).by(-1)
    end

    it "redirects to the products list" do
      product = Product.create! valid_attributes
      delete :destroy, params: {id: product.to_param}
      expect(response).to redirect_to(products_url)
    end
  end
end
