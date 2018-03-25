require 'rails_helper'

RSpec.describe Instructor, type: :model do

  describe 'validations' do
    it 'expect validate presence' do
      subject { Instructor.new }
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
      expect(subject).to be_invalid

      subject.instructor_id = '1231232141'
      subject.valid?
      expect(subject).to be_invalid

      subject.department = 'Engineer'
      subject.valid?
      expect(subject).to be_valid
    end
  end

  describe 'associations' do
    it { should have_many(:courses) }    
  end
end