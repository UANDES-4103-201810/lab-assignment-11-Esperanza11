require 'rails_helper'
RSpec.describe Message, type: :model do
  it "Mtest 1" do #usuario valido
    @user = create(:User)
    @message = create(:Message)
    expect(@message).to be_valid
  end

  it "Mtest 2" do #usr nil
    @message = build(:Message, user_id: nil)
    expect(@message).to_not be_valid
  end

  it "Mtest 3" do #nonex usr
    @message = build(:Message, user_id: 1000)
    expect(@message).to_not be_valid
  end

end