require 'rails_helper'

describe CoursePolicy do

  context 'being a user' do
    subject { described_class.new(user, course) }
    let(:course) { nil }
    let(:user) { FactoryBot.create(:user) }
    it {is_expected.to forbid_action(:new)}
    it {is_expected.to forbid_action(:create)}
    it {is_expected.to permit_action(:show)}
    it {is_expected.to permit_action(:apply)}
  end

  context 'being a student' do
    subject { described_class.new(student, course) }
    let(:course) { nil }
    let(:student) { FactoryBot.create(:student) }
    it {is_expected.to forbid_action(:new)}
    it {is_expected.to forbid_action(:create)}
    it {is_expected.to permit_action(:show)}
    it {is_expected.to permit_action(:apply)}
  end

  context 'being an instructor' do
    subject { described_class.new(instructor, course) }
    let(:course) { nil }
    let(:instructor) { FactoryBot.create(:instructor) }
    it {is_expected.to permit_action(:new)}
    it {is_expected.to permit_action(:create)}
    it {is_expected.to permit_action(:show)}
    it {is_expected.to permit_action(:apply)}
  end
end