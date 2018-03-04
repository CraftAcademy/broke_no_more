require 'rails_helper'

RSpec.describe SavingGoal, type: :model do

  describe 'db column' do
    it { should have_db_column :amount }
  end

  describe 'Validations' do
    it { should validate_presence_of :amount }
  end

  describe 'Associations' do
    it { should belong_to :user}
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryBot.create(:income)).to be_valid
    end
  end
end
