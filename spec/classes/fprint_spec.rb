require 'spec_helper'
describe 'fprint' do
  context 'when on Ubuntu' do
    let (:facts) { {
      :operatingsystem => 'Ubuntu',
      :osfamily        => 'Debian',
      :lsbdistcodename => 'trusty',
      :lsbdistrelease  => '14.04',
      :lsbdistid       => 'Ubuntu',
    } }

    let (:pre_condition) {
      "include ::apt"
    }

    it { should compile.with_all_deps }
  end

  context 'when on an unknown OS' do
    let (:facts) { {
      :operatingsystem => 'SunOS',
    } }

    it 'should fail' do
      expect { should compile }.to raise_error(Puppet::Error, /Unsupported operating system/)
    end
  end
end
