module WebpageUpdateChecker
  module Ways
    class Sha2
      def initialize(uri:)
        @uri = uri
      end

      def current_diff_value
        require 'digest/sha2'

        page = Mechanize.new.get(@uri)
        Digest::SHA256.hexdigest(page.body)
      end
    end
  end
end