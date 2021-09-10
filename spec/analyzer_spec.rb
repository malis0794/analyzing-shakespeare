require_relative "../lib/analyzer.rb"

describe MacbethAnalyzer do

    context "#analyze" do
        it 'looks up number of lines spoken by personaes' do
            analyzer = MacbethAnalyzer.new
            expect(analyzer.analyze).to include('Macbeth' => 543)
        end

        it 'does not include lines spoken by ALL' do
            analyzer = MacbethAnalyzer.new
            expect(analyzer.analyze).not_to include('ALL')
        end
    end

end