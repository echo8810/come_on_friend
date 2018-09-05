require 'test_helper'

class InitialsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get initials_index_url
    assert_response :success
  end

end
