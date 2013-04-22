require 'test_helper'

module SimpleImageBank
  class ImageBanksControllerTest < ActionController::TestCase
    setup do
      @image_bank = image_banks(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:image_banks)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create image_bank" do
      assert_difference('ImageBank.count') do
        post :create, image_bank: { image_bank_description: @image_bank.image_bank_description, image_bank_name: @image_bank.image_bank_name, user_id: @image_bank.user_id }
      end
  
      assert_redirected_to image_bank_path(assigns(:image_bank))
    end
  
    test "should show image_bank" do
      get :show, id: @image_bank
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @image_bank
      assert_response :success
    end
  
    test "should update image_bank" do
      put :update, id: @image_bank, image_bank: { image_bank_description: @image_bank.image_bank_description, image_bank_name: @image_bank.image_bank_name, user_id: @image_bank.user_id }
      assert_redirected_to image_bank_path(assigns(:image_bank))
    end
  
    test "should destroy image_bank" do
      assert_difference('ImageBank.count', -1) do
        delete :destroy, id: @image_bank
      end
  
      assert_redirected_to image_banks_path
    end
  end
end
