require 'test_helper'

module SimpleImageBank
  class ImageTypesControllerTest < ActionController::TestCase
    setup do
      @image_type = image_types(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:image_types)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create image_type" do
      assert_difference('ImageType.count') do
        post :create, image_type: { image_type_name: @image_type.image_type_name }
      end
  
      assert_redirected_to image_type_path(assigns(:image_type))
    end
  
    test "should show image_type" do
      get :show, id: @image_type
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @image_type
      assert_response :success
    end
  
    test "should update image_type" do
      put :update, id: @image_type, image_type: { image_type_name: @image_type.image_type_name }
      assert_redirected_to image_type_path(assigns(:image_type))
    end
  
    test "should destroy image_type" do
      assert_difference('ImageType.count', -1) do
        delete :destroy, id: @image_type
      end
  
      assert_redirected_to image_types_path
    end
  end
end
