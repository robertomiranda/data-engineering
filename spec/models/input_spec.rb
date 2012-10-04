require 'spec_helper'

describe Input do
  it "create  an input and restore the data" do
    file_path = Rails.root.join("spec", "fixtures", "example_input.tab")
    uploaded_file = Rack::Test::UploadedFile.new(file_path, "text/plain")
    input = Input.new(file: uploaded_file)
    input.save.should_not be nil
  end
end
