require 'rails_helper'

RSpec.describe Income, type: :model do
  it { should have_db_column :amount}

  describe 'Associations' do
    it { should belong_to :user}
  end

  describe 'Validations' do
    it {validate_presence_of :amount}
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryBot.create(:user)).to be_valid
    end
  end
end
