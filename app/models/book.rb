class Book < ApplicationRecord
  belongs_to :user
  validates:title, presence:true, uniqueness:true
end
#   def self.search(search)
#     if search
#       user_type=User.find_by(title:search)
#       if user_type
#         self.where(user_id:user_type)
#       else
#         @user=User.all
#       end
#     else
#       @user=User.all
#     end
#   end
# end
