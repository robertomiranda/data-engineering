require 'spec_helper'

describe Item do
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:price) }
  it { should belong_to(:merchant) }
  it { should have_many(:orders) }
  it { should have_many(:users).through(:orders) }
end
