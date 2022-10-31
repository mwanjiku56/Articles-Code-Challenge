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
  
  def magazine_by_articles
    Article.all.filter{|article|article.magazine.name==@name}
  end

  def contributors
    magazine_by_articles.map{|article|article.author}.uniq
  end

  def self.find_by_name(name)
    Magazine.all.find{|magazine|
      magazine.name == name}
  end

  def articles_by_title
    magazine_by_articles.map{|article|article.title}
  end

  def contributing_authors
    all_main_authors = []
    magazine_by_articles.map{|article|article.author}
    .tally.each{|key,value|value>2 && (all_main_authors << key)}
    all_main_authors
  end


end
