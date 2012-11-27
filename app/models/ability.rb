class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :read, User
    can :manage, User do |u|
        u.try(:id) == user.id
    end
  end

end
