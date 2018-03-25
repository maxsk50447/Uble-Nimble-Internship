require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'validations' do
    it 'expect validate presence' do
      subject { User.new }
      subject.email = ''
      subject.valid?
      expect(subject).to be_invalid

      subject.email = 'foo@bar.com'
      subject.valid?
      expect(subject).to be_invalid

      subject.password = '123456789'
      subject.valid?
      expect(subject).to be_invalid

      subject.first_name = 'Patipol'
      subject.valid?
      expect(subject).to be_invalid
      
      subject.last_name = 'Wangjaitham'
      subject.valid?
      expect(subject).to be_invalid
      
      subject.citizen_id = '1104000023482'
      subject.valid?
      expect(subject).to be_valid
    end
  end
  
  describe 'associations' do
    it { should have_and_belong_to_many(:courses) }
  end
end