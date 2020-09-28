require 'rspec/autorun'

class Membership
  def initialize(admin)
    @admin = admin
  end

  def admin?
    @admin.eql?(true)
  end

  def promote_to_admin
    @admin = true
  end

  def default
    @admin = false
  end
end

class User
  def initialize(user)
    @user = user
  end
end

class Group
  def initialize(group)
    @group = group
  end
end

describe Membership do
  before(:each) do
    chocolate_membership.promote_to_admin
  end

  let(:user) { User.new('Bill Wonka') }
  let(:chocolate_group) { Group.new('Chocolate Factory') }
  let(:peach_group) { Group.new('Giant Peach Enthusiasts') }
  let(:chocolate_membership) { Membership.new(user: user, group: chocolate_group, admin: false) }
  let(:peach_membership) { Membership.new(user: user, group: peach_group, admin: false) }

  describe '#promote_to_admin' do
    it 'makes a regular membership an admin membership' do
      
      expect(chocolate_membership.admin?).to eq(true)
    end

    it 'doens t change other memberships' do
      expect(peach_membership.admin?).not_to eq(true)
    end
  end
end
