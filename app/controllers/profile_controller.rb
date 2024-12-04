class ProfileController < ApplicationController
  def index
    authorize current_user, policy_class: CustomerPolicy
  end
end
