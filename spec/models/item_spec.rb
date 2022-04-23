require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe 'ユーザー出品機能' do
    context '出品できる場合' do
      it 'product_nameとexplanationとcategory_idとcondition_idとload_idとarea_idとshipping_day_idとselling_priceとimageとuser_idが存在すれば出品できる' do
        expect(@item).to be_valid
      end
    end
    context '出品できない場合' do
      it ' product_nameが空では登録できない' do
        @item.product_name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Product name can't be blank")
      end
      it 'explanationeが空では登録できない' do
        @item.explanation = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Explanation can't be blank")
      end
      it 'category_idが空では登録できない' do
        @item.category_id = '--'
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end
      it 'condition_idが空では登録できない' do
        @item.condition_id = '--'
        @item.valid?
        expect(@item.errors.full_messages).to include("Condition can't be blank")
      end
      it 'imageが空では登録できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it 'load_idが空では登録できない' do
        @item.load_id = '--'
        @item.valid?
        expect(@item.errors.full_messages).to include("Load can't be blank")
      end
      it 'area_idが空では登録できない' do
        @item.area_id = '--'
        @item.valid?
        expect(@item.errors.full_messages).to include("Area can't be blank")
      end
      it 'shipping_day_id が空では登録できない' do
        @item.shipping_day_id = '--'
        @item.valid?
        expect(@item.errors.full_messages).to include("Shipping day can't be blank")
      end
      it 'selling_priceが空では登録できない' do
        @item.selling_price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Selling price can't be blank")
      end
    end
  end
end
