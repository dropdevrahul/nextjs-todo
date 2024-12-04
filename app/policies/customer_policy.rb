class CustomerPolicy < ApplicationPolicy
 attr_reader :user

 def home?
   user.customer?
 end

 def index?
   user.customer?
 end
end
