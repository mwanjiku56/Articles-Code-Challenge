require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author=Author.new("Shakespear")
author1=Author.new("Robin sharma")
magazine1=Magazine.new("The Forbes","Fashion")
magazine2=Magazine.new("Peoples Daily","Politics")
magazine3=Magazine.new("Breaking news","Politics")
article1=Article.new(author,magazine1,"The title")
article2=Article.new(author,magazine2,"The new title")
article3=Article.new(author,magazine1,"Just title")
article4=Article.new(author1,magazine1,"The Monk")
author.add_article(magazine1,"another title")
author.add_article(magazine2,"newest title")
author.add_article(magazine3,"another new title")
author.add_article(magazine2,"what a title")
author.add_article(magazine2,"great title")
author1.add_article(magazine2,"who sold his ferrari")









### DO NOT REMOVE THIS
binding.pry

0
