require 'rails_helper'

RSpec.describe Course, type: :model do

  describe 'associations' do
    it { should have_and_belong_to_many(:users) }
    it { should belong_to(:instructor) }    
  end
end