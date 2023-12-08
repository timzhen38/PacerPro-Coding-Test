require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item1) { create(:item) }
  let(:item2) { create(:item) }
  let(:item3) { create(:item, deleted_at:Time.current) }

  describe "soft_delete" do
    it "soft deletes an item" do
      item1.soft_delete
      expect(item1.deleted_at).to_not be_nil
    end
  end

  describe "restore" do
    it "restores a soft-deleted item" do
      item1.restore
      expect(item1.deleted_at).to be_nil
    end
  end

  describe "default_scope" do
    it "displays a normal query with soft-deleted items excluded" do
      item3.soft_delete
      item_query = Item.all
      expect(item_query).to_not include(item3)
    end
  end


end
