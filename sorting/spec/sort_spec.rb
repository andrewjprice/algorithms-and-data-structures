require_relative '../sort.rb'

describe Sort do
    subject { Class.new.include(described_class).new }
    
    let(:list) { [1,2,3,4,5] }

    describe '#swap' do
        it 'exchanges elements' do
            expect(subject.swap(list, 0, 1)).to eq([2,1])
        end
    end

    describe '#less' do
        context 'when less than' do
            it 'returns true' do
                expect(subject.less(list, 0, 1)).to eq true
            end
        end

        context 'when greater than' do
            it 'returns false' do
                expect(subject.less(list, 1, 0)).to eq false
            end
        end
    end

    describe '#merge' do
        let(:left) { [1,2] }
        let(:right) { [3,4] }
        let(:result) { [1,2,3,4] }

        it 'merges two arrays into one' do
            expect(subject.merge(left, right)).to eq(result)
        end
    end

    describe '#sorted?' do
        let(:unordered_list) { [2,1,3,4,5] }

        context 'when ordered' do
            it 'returns true' do
                expect(subject.sorted?(list)).to eq true
            end
        end

        context 'when unordered' do
            it 'returns false' do
                expect(subject.sorted?(unordered_list)).to eq false
            end
        end
    end
end
