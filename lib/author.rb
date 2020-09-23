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
  
  def add_post_by_name(name)
    post = Post.new(name)
    add_post(post)
  end
  
  def song_count
    result = Song.all.select {|song| song.artist == self}
    result.length
  end
end