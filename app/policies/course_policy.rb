class CoursePolicy < ApplicationPolicy

  def index?
    true
  end

  def new?
    user.is?("Instructor")
  end

  def show?
    true
  end

  def apply?
    true
  end

  def create?
    user.is?("Instructor") 
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
