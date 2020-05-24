require 'spec_helper'

describe 'certificates' do
  let(:root_certificate_arn) do
    output_for(:harness, 'root_certificate_arn')
  end

  let(:server_certificate_arn) do
    output_for(:harness, 'server_certificate_arn')
  end
end
