require 'rails_helper'

RSpec.describe TasksController, type: :controller do

	describe "GET #index" do
		it 'renders the index template' do
			get :index

			expect(response).to render_template(:index)
		end

		it 'returns all tasks for user' do
			user = create(:user)
			get :index

			expect(assigns(:tasks)).not_to be_nil
		end
	end

	describe "GET #new" do
		it 'renders the new template' do
			get :new

			expect(response).to render_template(:new)
		end

		it 'assigns a new task to @task' do
			get :new

			expect(assigns(:task)).to be_a_new(Task)
		end
	end

	describe "GET #show" do
		it 'assigns the requested task as @task' do
			task = create(:homework)
			get :show, params: {id: task.to_param }
			
			expect(assigns(:task)).to eq(task)
		end

		it 'assigns the show template' do
			task = create(:email)
			get :show, params: {id: task.to_param }

			expect(response).to render_template(:show)
		end
	end

	describe "GET #edit" do
		it 'assigns the requested task as @task' do
			task = create(:homework)
			get :edit, params: {id: task.to_param }
			
			expect(assigns(:task)).to eq(task)
		end

		it 'assigns the edit template' do
			task = create(:email)
			get :edit, params: {id: task.to_param }

			expect(response).to render_template(:edit)
		end
	end

	describe "POST #create" do

		let(:user) {create(:user)}
		let(:valid_attributes) {attributes_for(:email, user_id: user.id)}
		let(:invalid_attributes) {attributes_for(:invalid_task)}

		context "with valid attributes" do
			it 'persists new task'

			it 'redirects to show page'
		end

		context "with invalid attributes" do
			it 'does not persist task'

			it 're-renders :new template'
		end
	end

end









