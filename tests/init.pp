# The baseline for module testing used by Puppet Labs is that each manifest
# should have a corresponding test manifest that declares that class or defined
# type.
#
# Tests are then run by using puppet apply --noop (to check for compilation
# errors and view a log of events) or by fully applying the test in a virtual
# environment (to compare the resulting system state to the desired state).
#
# Learn more about module testing here:
# http://docs.puppetlabs.com/guides/tests_smoke.html
#

droplet { 'test-digitalocean':
  ensure             => present,
  region             => 'lon1',
  size               => '512mb',
  image              => 9801950,
  ssh_keys           => [433359],
  private_networking => true,
}
