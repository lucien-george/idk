class WishesController < ApplicationController
  before_action :find_activity, only: %i[create]
  def index
    @wish = Wish.where(user: current_user)
    # @event = Event.all
  end

  def create
    @wish = Wish.new(user: current_user, activity: @activity)
    if @wish.save!
      respond_to do |format|
        format.html { redirect_to category_path(@activity.category) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'categories/show' }
        format.js
      end
    end
  end

  def destroy
    @wish = Wish.find(params[:id])
    @activity = @wish.activity
    if @wish.delete
      respond_to do |format|
        format.html { redirect_to wishes_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'wishes/index' }
        format.js
      end
    end
  end

  private

  def find_activity
    @activity = Activity.find(params[:activity_id])
  end
end
