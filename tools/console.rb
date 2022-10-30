require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author=Author.new("Shakespear")
magazine1=Magazine.new("The Forbes","Fashion")
magazine2=Magazine.new("Peoples Daily","Politics")
magazine3=Magazine.new("Breaking news","Politics")
article1=Article.new(author,magazine1,"The title")
article2=Article.new(author,magazine2,"The new title")
article3=Article.new(author,magazine1,"Just title")
author.add_article(magazine1,"another title")
author.add_article(magazine2,"newest title")
author.add_article(magazine3,"another new title")









### DO NOT REMOVE THIS
binding.pry

0
