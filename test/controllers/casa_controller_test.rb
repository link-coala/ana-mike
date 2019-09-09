require 'test_helper'

class CasaControllerTest < ActionDispatch::IntegrationTest
  test "should get calle" do
    get casa_calle_url
    assert_response :success
  end

  test "should get reception" do
    get casa_reception_url
    assert_response :success
  end

  test "should get janitorroom" do
    get casa_janitorroom_url
    assert_response :success
  end

  test "should get bathroom" do
    get casa_bathroom_url
    assert_response :success
  end

  test "should get garden" do
    get casa_garden_url
    assert_response :success
  end

  test "should get balcony" do
    get casa_balcony_url
    assert_response :success
  end

  test "should get managementoffice" do
    get casa_managementoffice_url
    assert_response :success
  end

end
