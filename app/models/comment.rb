class Comment < ActiveRecord::Base
  belongs_to :link



  #For some reason, Ruby throws a NoMethodError (undefined method `+' for nil:NilClass) if I try 
  #to add to score directly. Apparently, I can get the score, but I can't set it.
  #Probably has something to do with scope and whatnot. 
  def vote_up
    tempScore = score
    return tempScore+= 1
  end
end
