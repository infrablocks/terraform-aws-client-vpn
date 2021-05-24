# frozen_string_literal: true

require 'awspec'
require 'ostruct'

require_relative '../terraform_module'

shared_context :terraform do
  include Awspec::Helper::Finder

  let(:cloudwatch_logs_client) { Aws::CloudWatchLogs::Client.new }

  let(:vars) do
    OpenStruct.new(
      TerraformModule.configuration
      .for(:harness)
      .vars
    )
  end

  def output_for(role, name)
    TerraformModule.output_for(role, name)
  end

  def reprovision(overrides = nil)
    TerraformModule.provision_for(
      :harness,
      TerraformModule.configuration.for(:harness, overrides).vars
    )
  end
end
