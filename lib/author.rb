class Author
  attr_accessor :name, :post
  
  @@post_count = 0 
  
   def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts 
    Post.all.select {|post| post.author == self}
  end
  
  def add_post(post)
     @posts << post
    post.artist = self
    @@post_count += 1
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end
  
  def post_count
    @@post_count
  end
end