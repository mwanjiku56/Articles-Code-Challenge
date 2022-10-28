class Article

    @@all = []
    attr_reader :author, :magazine, :title
    # class method
    def self.all 
        @@all
      end

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end
    def author
        @author.name
    end


end
