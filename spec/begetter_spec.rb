require 'spec_helper'

describe Begetter do
  it 'has a version number' do
    expect(Begetter::VERSION).not_to be nil
  end

  describe '#get' do
    it 'creates a reference to a class' do
      klass = Begetter.get('FooBar')
      expect(klass.class).to eq(Class)
    end

    it 'creates a reference to a class with-in a module' do
      klass = Begetter.get('Muppets::Animal')
      expect(klass.class).to eq(Class)
    end

    context 'with a non-existent class' do
      it 'raises an error' do
        expect {
          Begetter.get('NotAKlass')
        }.to raise_error(Begetter::ClassNotDeclared)
      end
    end
  end
end
