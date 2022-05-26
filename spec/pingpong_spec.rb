require_relative '../pingpong'

RSpec.describe 'Ping-Pong Game' do
  describe '#play' do
    it 'shows round number at new line' do
      rounds_number = 5
      expected_output = "1\n2\nping\n4\npong\n"
      expect { play(rounds_number) }.to output(expected_output).to_stdout
    end
    it 'shows round number at new line' do
      rounds_number = 15
      expected_output = "1\n2\nping\n4\npong\nping\n7\n8\nping\npong\n11\nping\n13\n14\nping - pong\n"
      expect { play(rounds_number) }.to output(expected_output).to_stdout
    end
    it 'returns an array of ascending numbers up to the number entered' do
      expect(play(2)).to(eq([1,2]))
    end
  end
end
