require 'rails_helper'

RSpec.describe Course, type: :model do

  describe 'validations' do
    it 'expect validate presence' do
      subject { Course.new }
      subject.name = ''
      subject.valid?
      expect(subject).to be_invalid

      subject.name = 'Math'
      subject.valid?
      expect(subject).to be_invalid

      subject.course_id = '0132931'
      subject.valid?
      expect(subject).to be_invalid

      subject.instructor = FactoryBot.create(:instructor)
      subject.valid?
      expect(subject).to be_valid
    end
  end

  describe 'associations' do
    it { should have_and_belong_to_many(:users) }
    it { should belong_to(:instructor) }    
  end
end