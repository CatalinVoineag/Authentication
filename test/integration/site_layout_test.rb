require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "Authintication" do 
    get login_path
    assert_select 'h1', 'Login'
    post login_path, session: { email: 'catalin94v@gmail.com', password: '753159' }
    follow_redirect!
    get root_path
    assert_select 'h1', "Hi Catalin"
  
    
  end

end
