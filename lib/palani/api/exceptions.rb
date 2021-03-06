module Palani
  module Api
    class PageNotFoundException < StandardError; end
    class ContentElementNotFoundException < StandardError; end
    class InvalidRecordJSONException < StandardError; end
    class InvalidRecordXMLException < StandardError; end
    class InvalidUpdateOfRecordJSONException < StandardError; end
    class InvalidUpdateOfRecordXMLException < StandardError; end
  end
end