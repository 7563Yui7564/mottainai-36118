require 'test_helper'

class CreationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get creations_index_url
    assert_response :success
  end

end
