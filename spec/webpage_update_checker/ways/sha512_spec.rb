RSpec.describe WebpageUpdateChecker::Ways::Sha512 do
  describe '#current_diff_value' do
    let(:sha512) { WebpageUpdateChecker::Ways::Sha512.new(uri: 'https://www.yahoo.co.jp/') }

    it 'returns SHA512 hash format' do
      expect(sha512.current_diff_value).to match(/\A[a-f0-9]{128}\z/)
    end
  end
end
