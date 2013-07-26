class Post < ActiveRecord::Base
  attr_accessible :body, :publish_on, :published, :status, :title, :category_ids, :author, :blog_id

  has_many :categorizations
  has_many :categories, through: :categorizations
  accepts_nested_attributes_for :categorizations
  belongs_to :blog

  validates_presence_of :title
  validates_uniqueness_of :title
  validates_presence_of :body
  validates_presence_of :status

  def self.search(search)
  	if search
  		find(:all, conditions: ['title || body LIKE ?', "%#{search}%"])
  	else
  		find(:all)
  	end
  end
end
