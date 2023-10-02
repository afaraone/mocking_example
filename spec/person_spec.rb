require 'house'
require 'person'

describe Person do
  let(:name) { 'Andres' }
  let(:age) { 33 }
  let(:house) { House.new(24, 'Cool Street', 'N1 41AD', 'London') }

  subject { Person.new(name, age, house) }

  describe '#age' do
    context 'when the age is passed in as a string' do
      let(:age) { '33' }

      it 'sets age to an integer' do
        expect(subject.age).to eq(33)
      end
    end
  end

  describe '#lives_in_london?' do
    let(:house) { House.new(24, 'Cool Street', 'N1 41AD', 'London') }


    context 'the house has city set to "London"' do
      it 'returns true' do
        expect(subject.lives_in_london?).to eq(true)
      end
    end

    context 'the house has city set to "Sheffield"' do
      let(:house) { House.new(24, 'Cool Street', 'N1 41AD', 'Sheffield') }

      it 'returns false' do
        expect(subject.lives_in_london?).to eq(false)
      end
    end
  end
end