require 'rails_helper'
RSpec.describe User, type: :model do
  it "Utest 1" do #usuario valido
    @user = create(:User)
    expect(@user).to be_valid
  end

  it "Utest 2" do #username
    @user = create(:User)
    @user2 = build(:User, email: "u2",password: 2)
    expect(@user2).to_not be_valid
  end

  it "Utest 3" do #mail
    @user = create(:User)
    @user2 = build(:User, username: "Espe13", password: 3)
    expect(@user2).to_not be_valid
  end

  it "Utest 3" do #20
    @user = build(:User, username: "012345678901234567890")
    expect(@user).to_not be_valid
  end

end