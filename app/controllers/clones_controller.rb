class ClonesController < ApplicationController
  before_action :set_clone, only: [:show, :edit, :update, :destroy]
  def index
    @clones = Clone.all
  end
  def show
    @clone = Clone.find(params[:id])
  end
  def new
    @clone = Clone.new
  end
  def edit
  end
  def create
    @clone = Clone.new(clone_params)

    respond_to do |format|
      if @clone.save
        format.html { redirect_to new_session_path, notice: 'facebook account was successfully created.' }
        format.json { render :show, status: :created, location: @clone }
        
      else
        format.html { render :new }
        format.json { render json: @clone.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @clone.update(clone_params)
        format.html { redirect_to @clone, notice: 'facebook account was successfully updated.' }
        format.json { render :show, status: :ok, location: @clone }
      else
        format.html { render :edit }
        format.json { render json: @clone.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @clone.destroy
    respond_to do |format|
      format.html { redirect_to clones_url, notice: 'facebook account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
   
    def set_clone
      @clone = Clone.find(params[:id])
    end
    def clone_params
      params.require(:clone).permit(:First_name, :Last_name, :email, :password, :password_confirmation)
    end
end
