require 'mechanize'
Dir[File.expand_path('ways', __dir__) << '/*.rb'].each { |file| require file }

module WebpageUpdateChecker
  class Judge
    def updated?(checked_object, previous_diff_value:)
      current_diff_value(checked_object) != previous_diff_value
    end

    def current_diff_value(checked_object)
      checked_object.current_diff_value
    end
  end
end