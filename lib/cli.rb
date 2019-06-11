class CLI 
  
  def start 
    puts "Welcome. Learning how to becoming a software engineer can be very stressful, not to mention life in general. It is very important to take care of your mind and body in times of stress, which is usually when you feel the least like doing so. Yoga is a great way to both destress the mind and move the body after hours of sitting at the computer learning how to code."
    list_poses
    select_pose
    goodbye
    @poses = YogaPose.all
  end 
  
  def list_poses
    puts "Here is a list of 10 yoga poses targeted at destressing the mind and body:"
    
    #poses_array = 
  end
  
  def select_pose
    input = nil
    while input != "exit"
    puts "Please select a yoga pose 1-10 to learn more about or type 'list' to see the list of poses again or type 'exit' to exit:"
      input  = gets.strip.downcase
      case input
      when "1" 
        puts "More info on pose 1:"
      when "2" 
        puts "More info on pose 2:" 
      when "list"
        list_poses
      else 
        puts "Invalid input, refer back to directions to find your pose!"
    end
   end
  end
  
  def goodbye 
    puts "Namaste"
  end 
  
end