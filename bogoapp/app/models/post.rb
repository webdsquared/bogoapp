class Post < ActiveRecord::Base
  attr_accessible :body, :publish_on, :published, :status, :title
end
