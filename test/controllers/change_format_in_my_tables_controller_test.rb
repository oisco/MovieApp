require 'test_helper'

class ChangeFormatInMyTablesControllerTest < ActionController::TestCase
  setup do
    @change_format_in_my_table = change_format_in_my_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:change_format_in_my_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create change_format_in_my_table" do
    assert_difference('ChangeFormatInMyTable.count') do
      post :create, change_format_in_my_table: {  }
    end

    assert_redirected_to change_format_in_my_table_path(assigns(:change_format_in_my_table))
  end

  test "should show change_format_in_my_table" do
    get :show, id: @change_format_in_my_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @change_format_in_my_table
    assert_response :success
  end

  test "should update change_format_in_my_table" do
    patch :update, id: @change_format_in_my_table, change_format_in_my_table: {  }
    assert_redirected_to change_format_in_my_table_path(assigns(:change_format_in_my_table))
  end

  test "should destroy change_format_in_my_table" do
    assert_difference('ChangeFormatInMyTable.count', -1) do
      delete :destroy, id: @change_format_in_my_table
    end

    assert_redirected_to change_format_in_my_tables_path
  end
end
