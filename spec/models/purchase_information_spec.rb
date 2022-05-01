require 'rails_helper'

RSpec.describe PurchaseInformation, type: :model do
  before do
    user = FactoryBot.create(:user)
    item = FactoryBot.create(:item)
    @purchase_information = FactoryBot.build(:purchase_information, user_id: user.id,item_id: item.id)
  end

  context '内容に問題ない場合' do
    it "tokenとuser_idとitem_idとpostal_codeとarea_idとcity_nameとaddressとbuilding_nameとtelephone_numberがあれば保存ができること" do
      expect(@purchase_information).to be_valid
    end
  end

  context '内容に問題がある場合' do
    it "tokenが空では登録できないこと" do
      @purchase_information.token = ''
      @purchase_information.valid?
      expect(@purchase_information.errors.full_messages).to include("Token can't be blank")
    end
    it 'user_idが空では登録できない' do
      @purchase_information.user_id = ''
      @purchase_information.valid?
      expect(@purchase_information.errors.full_messages).to include("User can't be blank")
    end
    it 'item_idが空では登録できない' do
      @purchase_information.item_id = ''
      @purchase_information.valid?
      expect(@purchase_information.errors.full_messages).to include("Item can't be blank")
    end
    it 'postal_codeが空では登録できない' do
      @purchase_information.postal_code = ''
      @purchase_information.valid?
      expect(@purchase_information.errors.full_messages).to include("Postal code can't be blank")
    end
    it 'postal_codeは「3桁ハイフン4桁」の半角文字列のみ保存可能なこと' do
      @purchase_information.postal_code = '1234567'
      @purchase_information.valid?
      expect(@purchase_information.errors.full_messages).to include("Postal code is invalid. Include hyphen(-)")
    end
    it 'area_idが空では登録できない' do
      @purchase_information.area_id = 1
      @purchase_information.valid?
      expect(@purchase_information.errors.full_messages).to include("Area can't be blank")
    end
    it 'city_nameが空では登録できない' do
      @purchase_information.city_name = ''
      @purchase_information.valid?
      expect(@purchase_information.errors.full_messages).to include("City name can't be blank")
    end
    it 'addressが空では登録できない' do
      @purchase_information.address = ''
      @purchase_information.valid?
      expect(@purchase_information.errors.full_messages).to include("Address can't be blank")
    end
    it 'telephone_numberが空では登録できない' do
      @purchase_information.telephone_number = ''
      @purchase_information.valid?
      expect(@purchase_information.errors.full_messages).to include("Telephone number can't be blank")
    end
    it 'telephone_numberは10桁以上11桁以内の半角数値のみ保存可能なこと' do
      @purchase_information.telephone_number = '090-1234-5678'
      @purchase_information.valid?
      expect(@purchase_information.errors.full_messages).to include
    end
  end  
end  