require_relative 'my_outfit'
describe MyOutfit do
  describe '#pants' do
    it "has 2 pairs" do
      expect(subject.pants.first).to be_a Pants
      expect(subject.pants.count).to eq 2
    end
  end
end
