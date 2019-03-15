class Api::TabsController < ApplicationController

  def create
      @user = current_user
      @tab = Tab.new({
        tab_total: params[:tab_total],
        initial_amount_owed: params[:initial_amount_owed],
        owed_by_user_id: params[:owed_by_user_id],
        owed_to_user_id: params[:owed_to_user_id],
        description: params[:description]
        })
      if @tab.save
        render "api/users/show"
      else
        render json: @tab.errors.full_messages, status: 422
      end
    end

  def show

    @tab = Tab.find(params[:id])

  end

  def destroy
  end

  def index
  end

  def update
  end

  def edit
  end

end
