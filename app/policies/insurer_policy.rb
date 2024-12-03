class InsurerPolicy < ApplicationPolicy
 attr_reader :user

 def insurer_home?
   user.insurer?
 end
end
