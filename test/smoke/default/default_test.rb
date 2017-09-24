# # encoding: utf-8

# Inspec test for recipe cb_youtube-dl::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe file('/etc/yum.repos.d/epel.repo') do
  it { should exist }
end

describe package('python2-pip') do
  it { should be_installed }
end

describe file('/etc/cron.weekly/youtube-dl.sh') do
  it { should exist }
end

describe file('/usr/bin/youtube-dl.sh') do
  it { should exist }
end
