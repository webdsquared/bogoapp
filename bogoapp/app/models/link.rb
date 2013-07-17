class Link < ActiveRecord::Base
  attr_accessible :link_name, :link_url, :user_id

  belongs_to :user
end
