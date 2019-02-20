require_relative '../../sorting/shell_sort.rb'

describe Array do
    let(:unsorted_list) { [3,5,1,2,4] }
    let(:sorted_list) { [1,2,3,4,5] }

    describe '#shell_sort!' do
        it 'returns array in asc order' do
            expect(unsorted_list.shell_sort!).to eq sorted_list
        end
    end
end
