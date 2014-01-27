class Memory < ActiveRecord::Base
  belongs_to :memorable, polymorphic: true
  belongs_to :circle

end
