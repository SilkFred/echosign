RSpec.shared_context "shared client" do
  let(:access_token)  { "3AAABLblqZhAn6QAn9Y-bHYXzIujXLWyesyocYCJzCuZ9Ngl2WRfafru_ARBJkGchBxBJGUOj2_vlUvoCUmc9fPLxrNTPXWBN" }

  let(:client) do
    VCR.use_cassette('get_token', :record => :once) do
      Echosign::Client.new(access_token)
    end
  end
end
