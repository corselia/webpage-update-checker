module WebpageUpdateChecker
  module Methods
    class Sha256
      def initialize(uri:)
        @uri = uri
      end

      def current_comparison_value
        require 'digest/sha2'

        page = Mechanize.new.get(@uri)
        Digest::SHA256.hexdigest(page.body)
      end
    end
  end
end