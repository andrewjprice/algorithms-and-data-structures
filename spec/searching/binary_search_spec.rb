require_relative '../../searching/binary_search.rb'

describe BinarySearch do
    subject { described_class.new(sorted_list, 40) }

    let(:sorted_list) { [0,40,50,60,70] }

    describe '#recursive_search' do
        it 'returns key index' do
            expect(subject.recursive_search).to eq 1
        end
    end

    describe '#iterative_search' do
        it 'returns key index' do
            expect(subject.iterative_search).to eq 1
        end
    end
end
