require 'test_helper'

class NewblogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get newblogs_index_url
    assert_response :success
  end

end
