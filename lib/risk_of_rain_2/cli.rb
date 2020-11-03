class RiskOfRain2::CLI
  
  def call
    main_menu
  end

  def main_menu
    puts <<~DOC
      What sort of info do you want?
      1. Items
      2. Survivors
      3. Artifacts
      4. Exit
    DOC

    make_choice
  end

  def make_choice
    puts "Select a number from the list."
    input = gets.strip.downcase
    puts ""

    case input
    when "1"
      fetch_items
      main_menu
    when "2"
      fetch_survivors
      main_menu
    when "3"
      fetch_artifacts
      main_menu
    when "4"
      puts "Goodbye, friend."
    else
      puts "You must select a number."
      make_choice
    end
  end

  def fetch_items
    puts "Fetching items"
  end

  def fetch_survivors
    puts "Fetching survivors"
  end

  def fetch_artifacts
    puts "Fetching artifacts"
  end

end