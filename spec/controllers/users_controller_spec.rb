require 'rails_helper'

describe UsersController, :type => :controller do
  before do
    #@user = User.create!(email: "iza_abao@yahoo.com", password: "Maharlika0")
    @user = FactoryGirl.create(:user)
  end

  describe "#show" do
    context "User is logged in" do
      before do
        sign_in @user
      end

      it "Loads correct user details" do
        get :show, id: @user.id
        expect(response).to be_success
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq @user
      end
    end

    context "No user is logged in" do
      it "redirects to login" do
         get :show, id: @user.id
         expect(response).to redirect_to(new_user_session_path)
      end
    end    
  end
end