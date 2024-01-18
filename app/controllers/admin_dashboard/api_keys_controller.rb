# frozen_string_literal: true

class AdminDashboard::ApiKeysController < AdminsController
  before_action :set_admin_dashboard_api_key, only: %i[ show edit update destroy ]

  # GET /admin_dashboard/api_keys or /admin_dashboard/api_keys.json
  def index
    @admin_dashboard_api_keys = ApiKey.all
    @page_size = 20
    @page = 1
    @total_count = ApiKey.count
  end

  # GET /admin_dashboard/api_keys/1 or /admin_dashboard/api_keys/1.json
  def show
  end

  # GET /admin_dashboard/api_keys/new
  def new
    @admin_dashboard_api_key = ApiKey.new
  end

  # GET /admin_dashboard/api_keys/1/edit
  def edit
  end

  # POST /admin_dashboard/api_keys or /admin_dashboard/api_keys.json
  def create
    @admin_dashboard_api_key = ApiKey.new(admin_dashboard_api_key_params)

    respond_to do |format|
      if @admin_dashboard_api_key.save
        format.html { redirect_to admin_dashboard_api_key_url(@admin_dashboard_api_key), notice: "Api key was successfully created." }
        format.json { render :show, status: :created, location: @admin_dashboard_api_key }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_dashboard_api_key.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_dashboard/api_keys/1 or /admin_dashboard/api_keys/1.json
  def update
    respond_to do |format|
      if @admin_dashboard_api_key.update(admin_dashboard_api_key_params)
        format.html { redirect_to admin_dashboard_api_key_url(@admin_dashboard_api_key), notice: "Api key was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_dashboard_api_key }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_dashboard_api_key.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_dashboard/api_keys/1 or /admin_dashboard/api_keys/1.json
  def destroy
    @admin_dashboard_api_key.destroy!

    respond_to do |format|
      format.html { redirect_to admin_dashboard_api_keys_url, notice: "Api key was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_dashboard_api_key
      @admin_dashboard_api_key = ApiKey.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_dashboard_api_key_params
      params.fetch(:api_key).permit(:name)
    end
end
