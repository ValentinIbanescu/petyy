require 'test_helper'

class PetsControllerTest < ActionDispatch::IntegrationTest

  test "should get show" do
    get pets_show_url
    assert_response :success
  end


  # test "the truth" do
  #   assert true
  # end

end
