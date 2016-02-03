require "test_helper"

class SessionsControllerTest < ActionController::TestCase
  
  def setup
    @user = User.create(username: "jeff", email: "jeff@example.com", password: "password", admin: false)
  end
  
  test "should be able to login" do
    get :new
    assert_template 'sessions/new'
    assert_response :success
   post :create, session: {email: @user.email, password: @user.password}
   assert_redirected_to user_path(@user.id)
  end
  
end