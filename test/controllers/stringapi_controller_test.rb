require 'test_helper'

class StringapiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stringapi_index_url
    assert_response :success
  end

end
