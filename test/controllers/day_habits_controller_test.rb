require 'test_helper'

class DayHabitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @day_habit = day_habits(:one)
  end

  test "should get index" do
    get day_habits_url, as: :json
    assert_response :success
  end

  test "should create day_habit" do
    assert_difference('DayHabit.count') do
      post day_habits_url, params: { day_habit: { day_id: @day_habit.day_id, habit_id: @day_habit.habit_id } }, as: :json
    end

    assert_response 201
  end

  test "should show day_habit" do
    get day_habit_url(@day_habit), as: :json
    assert_response :success
  end

  test "should update day_habit" do
    patch day_habit_url(@day_habit), params: { day_habit: { day_id: @day_habit.day_id, habit_id: @day_habit.habit_id } }, as: :json
    assert_response 200
  end

  test "should destroy day_habit" do
    assert_difference('DayHabit.count', -1) do
      delete day_habit_url(@day_habit), as: :json
    end

    assert_response 204
  end
end
