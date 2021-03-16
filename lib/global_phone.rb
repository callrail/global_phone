require 'global_phone/context'
require 'global_phone/version'

module GlobalPhone
  class Error < ::StandardError; end
  class NoDatabaseError < Error; end

  extend Context
end
