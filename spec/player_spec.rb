require 'player'

describe Player do
    subject(:matthew) { Player.new('Matthew') }
    subject(:wareing) { Player.new('Wareing')}
    describe '#name' do
        it 'returns the name' do
            expect(matthew.name).to eq 'Matthew'
        end
    end

    describe '#hitpoints' do
        it 'returns the hit points' do
            expect(matthew.hitpoints).to eq described_class::HITPOINTS
        end
    end

    describe '#receive_damage' do
        it 'reduces hitpoints by 10' do
            expect{ matthew.receive_damage }.to change{matthew.hitpoints}.by -10
        end
    end
end