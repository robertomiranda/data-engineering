require 'spec_helper'

describe Order do
  it { should validate_presence_of(:count) }
  it { should validate_presence_of(:user) }
  it { should validate_presence_of(:item) }
  it { should belong_to(:item) }
  it { should belong_to(:user) }
end
