require_relative '../../searching/binary_search.rb'

describe Array do
    let(:sorted_list) { [0,40,50,60,70] }

    describe '#rbinary_search!' do
        it 'returns key index' do
            expect(sorted_list.rbinary_search!(40)).to eq 1
        end
    end

    describe '#binary_search!' do
        it 'returns key index' do
            expect(sorted_list.binary_search!(40)).to eq 1
        end
    end
end
