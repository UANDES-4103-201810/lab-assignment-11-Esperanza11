require 'rails_helper'
RSpec.describe ModelName, type: :model do
  it "Mtest 1" do #msg valido
    @message = create(:Message)
    expect(@message).to be_valid
  end

  it "Mtest 2" do #usr id
    @message = create(:Message, user_id: nil)
    expect(@message).to_not be_valid
  end

  it "Mtest 3" do #nonex user
    @message = create(:Message, user_id: 8)
    expect(@message).to_not be_valid
  end
end