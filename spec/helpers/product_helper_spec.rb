# frozen_string_literal: true

RSpec.describe ProductHelper, type: :helper do

  let(:product) {
    FactoryBot.create(:product)
  }

  describe ProductHelper do
    describe 'Return links' do
      it "#template_links(object, index)" do
        expect(helper.template_links(product, 'index')).to include(product_path(product))
        expect(helper.template_links(product, 'index')).to include(edit_product_path(product))
        expect(helper.template_links(product, 'index')).to include('delete')
      end

      it "#template_links(object, show)" do
        expect(helper.template_links(product, 'show')).to include(edit_product_path(product))
        expect(helper.template_links(product, 'show')).to include(products_path)
      end
    end

    describe 'Return Exception' do
      it "#template_links(object, ANOTHER_ACTION)" do
        expect(helper.template_links(product, 'ANOTHER_ACTION').class).to eq(ArgumentError.itself)
      end
    end
  end
end
