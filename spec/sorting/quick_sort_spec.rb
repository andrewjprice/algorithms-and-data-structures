require_relative '../../sorting/quick_sort.rb'

describe Array do
    let(:unsorted_list) { [3,5,1,2,4,10,9,12,7,0] }
    let(:sorted_list) { [0,1,2,3,4,5,7,9,10,12] }

    describe '#quick_sort!' do
        it 'returns array in asc order' do
            expect(unsorted_list.quick_sort!).to eq sorted_list
        end
    end
end
