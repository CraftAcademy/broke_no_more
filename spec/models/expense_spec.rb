require 'rails_helper'

RSpec.describe Expense, type: :model do
  describe 'DB table' do
    it { should have_db_column :rent }
    it { should have_db_column :transportation }
    it { should have_db_column :education }
    it { should have_db_column :food }
    it { should have_db_column :other }
    it { should have_db_column :insurance }
  end
end
