require 'test_helper'

class AnserControllerTest < ActionDispatch::IntegrationTest
  test "should get anser" do
    get anser_anser_url
    assert_response :success
  end

end
