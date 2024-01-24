# frozen_string_literal: true

class AdminDashboard::UsersController < AdminsController
  before_action :set_admin_dashboard_user, only: %i[ show edit update destroy confirm_destroy ]

  # GET /admin_dashboard/users or /admin_dashboard/users.json
  def index
    @q = User.ransack(params[:q])
    @pagy, @admin_dashboard_users = pagy(
      @q.result(distinct: true),
      items: 2
    )

    respond_to do |format|
      format.html # GET
      format.turbo_stream # POST
    end
  end

  # GET /admin_dashboard/users/1 or /admin_dashboard/users/1.json
  def show
  end

  # GET /admin_dashboard/users/new
  def new
    @admin_dashboard_user = User.new
  end

  # GET /admin_dashboard/users/1/edit
  def edit
  end

  # POST /admin_dashboard/users or /admin_dashboard/users.json
  def create
    if page_params
      redirect_to admin_dashboard_users_path(page: page_params)
    else
      @admin_dashboard_user = User.new(admin_dashboard_user_params)

      respond_to do |format|
        if @admin_dashboard_user.save
          format.html { redirect_to admin_dashboard_user_url(@admin_dashboard_user), notice: "User was successfully created." }
          format.json { render :show, status: :created, location: @admin_dashboard_user }
          # format.turbo_stream { render turbo_stream: turbo_stream.replace('modal', 'admin_dashboard/users/new', locals: { admin_dashboard_user: @admin_dashboard_user }) }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @admin_dashboard_user.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /admin_dashboard/users/1 or /admin_dashboard/users/1.json
  def update
    respond_to do |format|
      if @admin_dashboard_user.update(admin_dashboard_user_params)
        format.html { redirect_to admin_dashboard_user_url(@admin_dashboard_user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_dashboard_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_dashboard_user.errors, status: :unprocessable_entity }
      end
    end
  end

  def confirm_destroy
  end

  # DELETE /admin_dashboard/users/1 or /admin_dashboard/users/1.json
  def destroy
    @admin_dashboard_user.destroy!

    respond_to do |format|
      format.html { redirect_to admin_dashboard_users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_dashboard_user
      @admin_dashboard_user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_dashboard_user_params
      puts "params #{params}"
      params.require(:user).permit(:email, :password)
    end
end
