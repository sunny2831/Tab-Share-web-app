class TabSplitsController < ApplicationController
  before_action :set_tab_split, only: [:show, :edit, :update, :destroy]

  # GET /tab_splits
  # GET /tab_splits.json
  def index
    @tab_splits = TabSplit.all
  end

  # GET /tab_splits/1
  # GET /tab_splits/1.json
  def show
  end

  # GET /tab_splits/new
  def new
    @tab_split = TabSplit.new
  end

  # GET /tab_splits/1/edit
  def edit
  end

  # POST /tab_splits
  # POST /tab_splits.json
  def create
    @tab_split = TabSplit.new(tab_split_params)

    respond_to do |format|
      if @tab_split.save
        format.html { redirect_to @tab_split, notice: 'Tab split was successfully created.' }
        format.json { render :show, status: :created, location: @tab_split }
      else
        format.html { render :new }
        format.json { render json: @tab_split.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tab_splits/1
  # PATCH/PUT /tab_splits/1.json
  def update
    respond_to do |format|
      if @tab_split.update(tab_split_params)
        format.html { redirect_to @tab_split, notice: 'Tab split was successfully updated.' }
        format.json { render :show, status: :ok, location: @tab_split }
      else
        format.html { render :edit }
        format.json { render json: @tab_split.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tab_splits/1
  # DELETE /tab_splits/1.json
  def destroy
    @tab_split.destroy
    respond_to do |format|
      format.html { redirect_to tab_splits_url, notice: 'Tab split was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tab_split
      @tab_split = TabSplit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tab_split_params
      params.require(:tab_split).permit(:user_id, :tab_id, :payment_pending)
    end
end
