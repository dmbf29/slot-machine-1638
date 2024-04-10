require_relative '../slot_machine'

def test_scenario(reels, expected_score)
  it "should return #{expected_score} if we have #{reels.join(', ')}" do
    slot_machine = SlotMachine.new
    expect(slot_machine.score(reels)).to eq(expected_score)
  end
end

describe SlotMachine do
  describe '#score' do
    test_scenario(['🤩', '🤩', '🤩'], 50)
    test_scenario(['⭐️', '⭐️', '⭐️'], 40)
    test_scenario(['🛎️', '🛎️', '🛎️'], 30)
    test_scenario(['7️⃣', '7️⃣', '7️⃣'], 20)
    test_scenario(['🍒', '🍒', '🍒'], 10)
    test_scenario(['🤩', '🤩', '⭐️'], 25)
    test_scenario(['🤩', '⭐️', '🤩'], 25)
    test_scenario(['⭐️', '🤩', '🤩'], 25)
    test_scenario(['⭐️', '🛎️', '🤩'], 0)
    test_scenario(['🤩', '⭐️', '⭐️'], 20)
    test_scenario(['🛎️', '🤩', '🛎️'], 15)
    test_scenario(['7️⃣', '7️⃣', '🤩'], 10)
    test_scenario(['🤩', '🍒', '🍒'], 5)
    test_scenario(['🤩', '🍒', '7️⃣'], 0)
  end
end
