RSpec.describe WebpageUpdateChecker::Methods::Sha256 do
  describe '#current_comparison_value' do
    let(:sha256) { WebpageUpdateChecker::Methods::Sha256.new(uri: 'https://www.yahoo.co.jp/') }

    it 'returns SHA256 hash format' do
      expect(sha256.current_comparison_value).to match(/\A[a-f0-9]{64}\z/)
    end
  end
end
