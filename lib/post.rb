class Post 
  
  attr_accessor :title, :author 
  
  @@all=[]
  def initialize(name)
    @title = title
    @author = author
    @@all << self
  end
  
  def title
    @title
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