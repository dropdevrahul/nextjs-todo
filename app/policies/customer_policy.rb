class CustomerPolicy < ApplicationPolicy
 attr_reader :user

 def home?
   user.customer?
 end
end
