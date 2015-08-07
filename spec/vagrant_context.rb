RSpec.shared_context "run with driver" do |driver_args|
  require 'cheffish/rspec/chef_run_support'
  extend Cheffish::RSpec::ChefRunSupport

  include_context "with a chef repo"

  vagrant_driver = Chef::Provisioning.driver_for_url(driver_args[:driver_string])

  let(:provisioning_driver) { vagrant_driver }
end
