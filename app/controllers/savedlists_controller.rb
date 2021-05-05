class SavedlistsController < ApplicationController
  before_action :set_savedlist, only: %i[ show edit update destroy ]

  # GET /savedlists or /savedlists.json
  def index
    @savedlists = Savedlist.all
  end

  # GET /savedlists/1 or /savedlists/1.json
  def show
  end

  # GET /savedlists/new
  def new
    @savedlist = Savedlist.new
  end

  # GET /savedlists/1/edit
  def edit
  end

  # POST /savedlists or /savedlists.json
  def create
    @savedlist = Savedlist.new(savedlist_params)

    respond_to do |format|
      if @savedlist.save
        format.html { redirect_to @savedlist, notice: "Savedlist was successfully created." }
        format.json { render :show, status: :created, location: @savedlist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @savedlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /savedlists/1 or /savedlists/1.json
  def update
    respond_to do |format|
      if @savedlist.update(savedlist_params)
        format.html { redirect_to @savedlist, notice: "Savedlist was successfully updated." }
        format.json { render :show, status: :ok, location: @savedlist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @savedlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /savedlists/1 or /savedlists/1.json
  def destroy
    @savedlist.destroy
    respond_to do |format|
      format.html { redirect_to savedlists_url, notice: "Savedlist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_savedlist
      @savedlist = Savedlist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def savedlist_params
      params.fetch(:savedlist, {})
    end
end
