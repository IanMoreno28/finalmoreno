class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in

    unless user.id.nil?
      can :manage, :all

    else
      can :manage, Brand, user_id: user.id
      can :create, User
      can :read, User, :id => user.id
      can :update, User, :id => user.id
    end

  end
end
