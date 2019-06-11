class CLI 
  
  def start 
    puts "Welcome. Learning how to becoming a software engineer can be very stressful, not to mention life in general. It is very important to take care of your mind and body in times of stress, which is usually when you feel the least like doing so. Yoga is a great way to both destress the mind and move the body after hours of sitting at the computer learning how to code."
    list_poses
    @poses = YogaPose.all  #or just YogaPose
    @poses.each.with_index(1) do  |pose, i|
      puts  "#{i}. #{pose.name}"
    end 
    select_pose
    goodbye
    
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
      
      if input.to_i > 0 
        puts @poses #[input.to_i-1]
      elsif input == "list"
        list_poses
        elsif input == "exit"
        goodbye
      else 
        puts "Invalid input, refer back to directions to find your pose!"
    end
   end
  end
  
  def goodbye 
    puts "Namaste"
  end 
  
end