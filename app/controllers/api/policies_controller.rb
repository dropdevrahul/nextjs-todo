module Api
  class PoliciesController < ApiController
    before_action :set_policy, except: [:create, :index]

    def show
      render json: @policy
    end

    def index
      render json: @policy = Policy.all
    end

    def create
      @policy = Policy.create(policy_params)

      if @policy.save
        head :created, location: [:api, @policy]
      else
        render json: @policy.errors, status: :bad_entity
      end
    end
  end
end
