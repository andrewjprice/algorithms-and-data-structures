require_relative '../../sorting/insertion_sort.rb'

describe Array do
    let(:unsorted_list) { [5,4,3,2,1] }
    let(:sorted_list) { [1,2,3,4,5] }

    describe '#insertion_sort!' do
        it 'returns array in asc order' do
            expect(unsorted_list.insertion_sort!).to eq sorted_list
        end
    end
end
