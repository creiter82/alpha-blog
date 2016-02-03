require "test_helper"

class ArticlesControllerTest < ActionController::TestCase

  def setup
    @user1 = User.create(username: "Jeff", email: "jeff@example.com", 
                        password: "password", admin: false)
  end
  
  test "should get index" do
    get :index
    assert_response :success
  end
  
  test "should get new" do
    session[:user_id] = @user1.id
    get :new
    assert_response :success
  end

end