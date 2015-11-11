module Begetter
  class Getter
    class << self
      # generate a class based on a string name and raise
      # Begetter::ClassNotDeclared if the class doesnt exist in the
      # current scope
      def get(klass_name)
        Object.const_get(klass_name)
      rescue NameError
        raise Begetter::ClassNotDeclared,
              "#{klass_name} does not exist. Did you declare it?"
      end
    end
  end
end
