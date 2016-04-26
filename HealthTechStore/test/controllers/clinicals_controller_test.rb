require 'test_helper'

class ClinicalsControllerTest < ActionController::TestCase
  setup do
    @clinical = clinicals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinicals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinical" do
    assert_difference('Clinical.count') do
      post :create, clinical: { Clinical: @clinical.Clinical, Clinical: @clinical.Clinical, Clinical: @clinical.Clinical, Clinical: @clinical.Clinical, ClinicalID: @clinical.ClinicalID, Email: @clinical.Email, Name: @clinical.Name, Number: @clinical.Number, Phone: @clinical.Phone, Rating: @clinical.Rating }
    end

    assert_redirected_to clinical_path(assigns(:clinical))
  end

  test "should show clinical" do
    get :show, id: @clinical
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinical
    assert_response :success
  end

  test "should update clinical" do
    patch :update, id: @clinical, clinical: { Clinical: @clinical.Clinical, Clinical: @clinical.Clinical, Clinical: @clinical.Clinical, Clinical: @clinical.Clinical, ClinicalID: @clinical.ClinicalID, Email: @clinical.Email, Name: @clinical.Name, Number: @clinical.Number, Phone: @clinical.Phone, Rating: @clinical.Rating }
    assert_redirected_to clinical_path(assigns(:clinical))
  end

  test "should destroy clinical" do
    assert_difference('Clinical.count', -1) do
      delete :destroy, id: @clinical
    end

    assert_redirected_to clinicals_path
  end
end
