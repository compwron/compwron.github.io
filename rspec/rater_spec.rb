require_relative '../find_ratings'

describe Rater do
	context 'foo' do
		let(:data) { "foo *hike\nbar*climb[LT]\nbaz *stroll" }
		subject { Rater.new(data).order }
		it 'sorts' do 
			expect(subject[0]).to include 'climb'
			expect(subject[1]).to include 'hike'
			expect(subject[2]).to include 'stroll'
		end
	end
end
