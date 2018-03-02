require 'rails_helper'

RSpec.describe SavingGoal, type: :model do
  it { should have_db_column :amount}

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryBot.create(:income)).to be_valid
    end
  end
end
