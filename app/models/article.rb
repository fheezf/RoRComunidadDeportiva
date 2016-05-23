class Article < ActiveRecord::Base
   validates :title, :body, :published_at, :summary, presence:{message: 'El campo no puede estar vacio'}
   #validates :title, presence:{message: ' no puede estar vacio'}
   has_many :images, :dependent => :destroy
   has_and_belongs_to_many :locations
   belongs_to :user
   has_one :video
   belongs_to :local_team, class_name: "Team", foreign_key: "local_team_id"
   belongs_to :foreign_team, class_name: "Team", foreign_key: "foreign_team_id"


  default_scope lambda {order('published_at DESC')  }
  
  scope :published, lambda {where("articles.published_at IS NOT NULL") }
  scope :draft, lambda {where("articles.published_at IS NULL") }
  scope :recent, lambda { published.where("articles.published_at > ?", 1.week.ago.to_date) }

  scope :con_titulo, lambda {|term = nil| where("articles.title LIKE ?", "%#{term}%" ) }

  scope :con_provincia, lambda {|term = nil| joins(:articles_locations).where("articles_locations.location_id = ?", "#{term}") }
  def owned_by?(owner)
    return false unless owner.is_a? User
    user == owner
  end
end
