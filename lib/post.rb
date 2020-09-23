class Post 
  
  attr_accessor :name, :author 
  
  @@all=[]
  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    if self.author
      self.author.name
    else
      NIL
    end
  end
end