require 'rails_helper'

RSpec.describe Income, type: :model do
  it { should have_db_column :amount}

end
