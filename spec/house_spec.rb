require 'house'

describe House do
  subject { House.new(24, 'Cool Street', 'N1 4AD', 'London') }

  describe '#house_number' do
    context 'when the house_number is passed in as a string' do
      let(:house_number) { '24' }

      it 'sets house_number to an integer' do
        expect(subject.house_number).to eq(24)
      end
    end
  end

  describe '#city' do
    it 'returns the city' do
      expect(subject.city).to eq('London')
    end
  end
end