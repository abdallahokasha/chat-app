require 'rails_helper'

RSpec.describe ApplicationsController, type: :controller do
    before(:all) do 
        @application1 = Application.create(name:"application1")
        @application2 = Application.create(name:"application2")
        @application3 = Application.create(name:"application3")
        @application4 = Application.create(name:"application4")
    end 
    
    after(:all) do
        Application.delete_all
    end
  
  # list all applications
  # /applications
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to have_http_status(:successful)
      expect(response).to have_http_status(200)
    end

    it "Returns all created applications" do
      get :index
      expect(assigns(:applications)).to match_array([@application1, @application2, @application3, @application4])
    end
  end
end
