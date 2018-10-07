require 'rails_helper'

RSpec.describe Admin::CategoriesController, type: :controller do

  shared_examples 'have http status ok' do
    it { expect(response).to have_http_status(:ok) }
  end

  shared_context 'user login context' do
    let(:login_type) { 'user' }
    it 'redirects to root path' do 
      expect(response).to redirect_to root_path
    end
  end

  shared_context 'not login context' do
    it 'redirects to sign in path' do 
      expect(response).to redirect_to user_session_path 
    end
  end

  let(:login_process) do 
    login_admin if login_type == 'admin'
    login_user  if login_type == 'user'
  end

  let(:login_type) {}
  before { login_process }

  describe 'GET #index' do
    before { get :index }
    context 'Admin login' do
      let(:login_type) { 'admin' }
      
      context 'Have not paging' do
        let(:categories) { create_list(:category, 5) }
        
        it_behaves_like 'have http status ok'

        it 'assigns @categories' do
          expect(assigns(:categories)).to match_array categories 
        end

        it 'renders the :index template' do
          expect(response).to render_template :index
        end
      end

      context 'Have paging' do
        let(:categories) { create_list(:category, 15) }
        
        it 'assigns @categories' do
          expect(assigns(:categories)).to match_array Category.order(:name).limit(10) 
        end

        it 'renders the :index template' do
          expect(response).to render_template :index
        end
      end

    end

    context 'User Login' do
      include_context 'user login context'
    end

    context 'Not Login' do
      include_context 'not login context'
    end
  end

  describe "GET #show" do
    let(:category) { create(:category) }
    before { get :show, params: { id: category.id } }

    context 'Admin Login' do
      let(:login_type) { 'admin' }

      it_behaves_like 'have http status ok' 

      it 'assigns @category' do
        expect(assigns(:category)).to eq category 
      end

      it 'renders the :show template' do
        expect(response).to render_template :show
      end
    end

    context 'User Login' do
      include_context 'user login context'
    end

    context 'Not Login' do
      include_context 'not login context'
    end
  end

  describe 'GET #new' do
    before { get :new }

    context 'Admin Login' do
      let(:login_type) { 'admin' }

      it_behaves_like 'have http status ok' 

      it 'assigns new @category' do
        expect(assigns(:category)).to be_a_new Category 
      end

      it 'renders the :new template' do
        expect(response).to render_template :new
      end
    end

    context 'User Login' do
      include_context 'user login context'
    end

    context 'Not Login' do
      include_context 'not login context'
    end
  end

  describe 'GET #edit' do
    let(:category) { create(:category) }
    before { get :edit, params: { id: category.id } }

    context 'Admin Login' do
      let(:login_type) { 'admin' }

      it_behaves_like 'have http status ok' 

      it 'assigns @category' do
        expect(assigns(:category)).to eq category 
      end

      it 'renders the :edit template' do
        expect(response).to render_template :edit
      end
    end

    context 'User Login' do
      include_context 'user login context'
    end

    context 'Not Login' do
      include_context 'not login context'
    end
  end

  describe 'POST #create' do
    let(:category_attributes) { attributes_for(:category) }

    context 'Admin Login' do
      let(:login_type) { 'admin' }

      it_behaves_like 'have http status ok'

      it 'creates a new category' do
        expect {
          post :create, params: { category: category_attributes }
        }.to change(Category, :count).by(1)
      end

      it 'redirects to the created category' do
        post :create, params: { category: category_attributes }
        expect(response).to redirect_to [:admin, Category.last]
      end
    end

    context 'User Login' do
      before { post :create, params: { category: category_attributes} } 
      include_context 'user login context'
    end

    context 'Not Login' do
      before { post :create, params: { category: category_attributes} } 
      include_context 'not login context'
    end
  end

  describe 'PATCH #update' do
    let!(:category) { create(:category) }
    let(:update_attributes) { { name: 'update category name' } }

    before { patch :update, params: { id: category.id, category: update_attributes } }

    context 'Admin Login' do
      let(:login_type) { 'admin' }

      it 'updates updated category' do
        category.reload
        expect(category.name).to eq update_attributes[:name]
      end

      it 'redirects to the category' do
        expect(response).to redirect_to [:admin, Category.last]
      end
    end

    context 'User Login' do
      include_context 'user login context'
    end

    context 'Not Login' do
      include_context 'not login context'
    end
  end

  describe 'DELETE #destroy' do
    let!(:category) { create(:category) }

    context 'Admin Login' do
      let(:login_type) { 'admin' }

      it 'deletes the category' do
        expect {
          delete :destroy, params: { id: category.id }
        }.to change(Category, :count).by(-1)
      end

      it 'redirects the category list' do
        delete :destroy, params: { id: category.id }
        expect(response).to redirect_to(admin_categories_path)
      end
    end

    context 'User Login' do
      before { delete :destroy, params: { id: category.id } }
      include_context 'user login context'
    end

    context 'Not Login' do
      before { delete :destroy, params: { id: category.id } }
      include_context 'not login context'
    end
  end
end