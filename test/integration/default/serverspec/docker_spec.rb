require 'serverspec'

describe service('docker') do
  it { should be_running }
end
