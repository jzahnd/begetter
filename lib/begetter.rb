require 'begetter/version'
require 'begetter/error'
require 'begetter/getter'

module Begetter
  # Get a reference to a Class from a string
  #
  # @param [String] klass_name name of the class being referenced
  #
  # @return [Class] Constant reference to klass_name
  #
  # @example Create a reference to FooBar
  #     class FooBar; end
  #     klass = Begegger.get('FooBar')
  #     => FooBar
  def self.get(klass_name)
    Getter.get(klass_name)
  end
end
