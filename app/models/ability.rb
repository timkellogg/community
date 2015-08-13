class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role == 'user'
        can :read, :posts, :comments
    elsif user.role == 'admin'
        can :manage, :all
    elsif user.role == 'mod'
        can :manage, :comments
        can :read, :all
    else
        can :read
    end 
  end
end
