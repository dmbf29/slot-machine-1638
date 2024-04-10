class SlotMachine

  def score(reels)
    options = ['🍒', '7️⃣', '🛎️', '⭐️', '🤩']
    # Create a hash with the scoring possibilities
    #Check to see if all of the reels are the same(.uniq)
    #Look up the first reel in the hash for the score
    #If they are all different return zero
    if reels.uniq.count == 1
      option = reels.first
      index = options.index(option)
      (index + 1) * 10
    elsif reels.uniq.count == 2 && reels.include?('🤩')
      option = reels.sort[1]
      index = options.index(option)
      (index + 1) * 5
    else
      return 0
    end
  end
end
