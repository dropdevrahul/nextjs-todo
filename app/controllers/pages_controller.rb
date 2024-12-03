class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    if current_user.insurer?
      return redirect_to action: :insurer_home
    end

    authorize current_user, policy_class: CustomerPolicy
  end

  def insurer_home
    authorize current_user, policy_class: InsurerPolicy
  end
end
