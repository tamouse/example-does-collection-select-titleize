class MyThingsController < ApplicationController
  before_action :set_my_thing, only: [:show, :edit, :update, :destroy]

  # GET /my_things
  # GET /my_things.json
  def index
    @my_things = MyThing.all
  end

  # GET /my_things/1
  # GET /my_things/1.json
  def show
  end

  # GET /my_things/new
  def new
    @my_thing = MyThing.new
  end

  # GET /my_things/1/edit
  def edit
  end

  # POST /my_things
  # POST /my_things.json
  def create
    @my_thing = MyThing.new(my_thing_params)

    respond_to do |format|
      if @my_thing.save
        format.html { redirect_to @my_thing, notice: 'My thing was successfully created.' }
        format.json { render :show, status: :created, location: @my_thing }
      else
        format.html { render :new }
        format.json { render json: @my_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_things/1
  # PATCH/PUT /my_things/1.json
  def update
    respond_to do |format|
      if @my_thing.update(my_thing_params)
        format.html { redirect_to @my_thing, notice: 'My thing was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_thing }
      else
        format.html { render :edit }
        format.json { render json: @my_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_things/1
  # DELETE /my_things/1.json
  def destroy
    @my_thing.destroy
    respond_to do |format|
      format.html { redirect_to my_things_url, notice: 'My thing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_thing
      @my_thing = MyThing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_thing_params
      params.require(:my_thing).permit(:stuff_id)
    end
end
