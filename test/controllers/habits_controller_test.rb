require 'test_helper'

class HabitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @habit = habits(:one)
  end

  test "should get index" do
    get habits_url, as: :json
    assert_response :success
  end

  test "should create habit" do
    assert_difference('Habit.count') do
      post habits_url, params: { habit: { author_id: @habit.author_id, criteria: @habit.criteria, description: @habit.description, habit_type: @habit.habit_type, title: @habit.title, why: @habit.why } }, as: :json
    end

    assert_response 201
  end

  test "should show habit" do
    get habit_url(@habit), as: :json
    assert_response :success
  end

  test "should update habit" do
    patch habit_url(@habit), params: { habit: { author_id: @habit.author_id, criteria: @habit.criteria, description: @habit.description, habit_type: @habit.habit_type, title: @habit.title, why: @habit.why } }, as: :json
    assert_response 200
  end

  test "should destroy habit" do
    assert_difference('Habit.count', -1) do
      delete habit_url(@habit), as: :json
    end

    assert_response 204
  end
end
