module ApplicationHelper 
  def instructor?(user)
    'Instructor' == user[:type]
  end

  def readyApply?(user)
    @course = Course.find(params[:id])
    @course.users.each do |course|
      if(course.first_name == user)
        return true
      end
    end
    return false
  end
end
