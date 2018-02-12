module ApplicationHelper 
  def instructor?(user)
    'Instructor' == user[:type]
  end

  def readyApply?(user)
    @course = Course.find(params[:id])
    @course.users.each do |course|
      if(course.firstname == user)
        return true
      end
    end
    return false
  end
end
