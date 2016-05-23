require "playstore_parser/version"
require "googleplay.pb"

module PlaystoreParser

  def self.parse(response)
    ResponseWrapper.new.parse(response)
  end

end
