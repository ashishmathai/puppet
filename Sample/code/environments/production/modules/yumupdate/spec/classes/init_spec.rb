require 'spec_helper'
describe 'yumupdate' do
  context 'with default values for all parameters' do
    it { should contain_class('yumupdate') }
  end
end
