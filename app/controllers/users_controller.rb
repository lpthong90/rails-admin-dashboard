# frozen_string_literal: true

class UsersController < ApplicationController
  layout "user"
  before_action :authenticate_user!

  def index
  end
end
