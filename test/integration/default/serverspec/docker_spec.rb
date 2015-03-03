require 'serverspec'

set :backend, :exec

describe service('docker') do
  it { should be_running }
end

describe file('/var/run/docker.sock') do
  it { should be_socket }
end
