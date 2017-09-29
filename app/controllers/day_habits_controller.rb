class DayHabitsController < ApplicationController
  before_action :set_day_habit, only: [:show, :update, :destroy]

  # GET /day_habits
  def index
    @day_habits = DayHabit.all

    render json: @day_habits
  end

  # GET /day_habits/1
  def show
    render json: @day_habit
  end

  # POST /day_habits
  def create
    @day_habit = DayHabit.new(day_habit_params)

    if @day_habit.save
      render json: @day_habit, status: :created, location: @day_habit
    else
      render json: @day_habit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /day_habits/1
  def update
    if @day_habit.update(day_habit_params)
      render json: @day_habit
    else
      render json: @day_habit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /day_habits/1
  def destroy
    @day_habit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day_habit
      @day_habit = DayHabit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def day_habit_params
      params.require(:day_habit).permit(:habit_id, :day_id)
    end
end
