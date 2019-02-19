require_relative '../quick_sort.rb'

describe QuickSort do
    subject { described_class.new(unsorted_list) }

    let(:unsorted_list) { [2,1,3,5,4] }
    let(:sorted_list) { [1,2,3,4,5] }

    describe '#sort' do
        it 'returns list in asc order' do
            expect(subject.sort).to eq sorted_list
        end
    end
end
