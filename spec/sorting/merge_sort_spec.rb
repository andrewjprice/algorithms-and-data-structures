require_relative '../../sorting/merge_sort.rb'

describe Array do
    let(:unsorted_list) { [3,5,1,2,4] }
    let(:sorted_list) { [1,2,3,4,5] }

    describe '#merge_sort!' do
        it 'returns array in asc order' do
            expect(unsorted_list.merge_sort!).to eq sorted_list
        end
    end
end
