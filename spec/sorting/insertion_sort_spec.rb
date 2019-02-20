require_relative '../../sorting/insertion_sort.rb'

describe InsertionSort do
    subject { described_class.new(unsorted_list) }

    let(:unsorted_list) { [5,4,3,2,1] }
    let(:sorted_list) { [1,2,3,4,5] }

    describe '#sort' do
        it 'returns list in asc order' do
            expect(subject.sort).to eq sorted_list
        end
    end
end
