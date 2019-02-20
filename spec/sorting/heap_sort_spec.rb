require_relative '../../sorting/heap_sort.rb'

describe HeapSort do
    subject { described_class.new(unsorted_list) }

    let(:unsorted_list) { [3,5,1,2,4] }
    let(:sorted_list) { [1,2,3,4,5] }

    describe '#sort' do
        it 'returns list in asc order' do
            expect(subject.sort).to eq sorted_list
        end
    end
end
