class Magazine
  attr_accessor :name, :category
  @@all=[]

  def self.all
    @@all
  end

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
    

  end
  def contributors
    Article.all.filter{|article|article.magazine.name==@name}.map{|article|article.author}.uniq
  end
  def self.find_by_name(name)
    Magazine.all.find{|magazine|
      magazine.name == name}
  end
  def articles_by_title
    
  end


end
