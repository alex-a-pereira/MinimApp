require "rails_helper"

RSpec.describe "posts controller", :type => :request do
  it "redirects to show the new post after submitting" do
    get "/posts/new"
    expect(response).to render_template(:new)
    
    test_name = "User's Name"
    test_content = "User's Quote"

    post "/posts", :params => { :post => {:name => test_name, :content => test_content} }
    follow_redirect!

    expect(response).to render_template(:show)
  end
  
  it "renders to new on empty input submit" do
    get "/posts/new"
    expect(response).to render_template(:new)
    
    test_name = ""
    test_content = ""

    post "/posts", :params => { :post => {:name => test_name, :content => test_content} }
    
    expect(response).to render_template(:new)     
  end

  

end
