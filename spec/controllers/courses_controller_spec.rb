require 'rails_helper'

RSpec.describe CoursesController, type: :controller do

  let(:user) { FactoryBot.create(:user) }
  let(:instructor) { FactoryBot.create(:instructor) }

  describe 'GET#index' do
    before do
      sign_in user
    end

    course = FactoryBot.create(:course)

    it 'responds with 200 status' do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET#new' do
    before do
      sign_in instructor
    end

    course = FactoryBot.create(:course)

    it 'responds with 200 status' do
      get :new, params: { instructor_id: controller.current_user.id }
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST#create' do
    before do
      sign_in instructor
    end
    
    it 'creates a new course' do
      expect { post :create, params: { course: FactoryBot.attributes_for(:course)}} .to change{ Course.count }.by(1)
    end
  end

  describe 'GET#show' do
    before do
      sign_in user
    end

    course = FactoryBot.create(:course)

    it 'responds with 200 status' do
      get :show, params: { id: course.id }
      expect(response).to have_http_status(:ok)
    end
  end



  describe 'POST#apply' do

    before do
      sign_in user
    end

    course = FactoryBot.create(:course)

    it 'responds with 200 status' do
      post :apply, params: { id: course.id }
      expect(course.users.last).to eq(controller.current_user)
    end
  end

end