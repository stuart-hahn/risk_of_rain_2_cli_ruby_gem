class RiskOfRain2::CLI
  
  def call
    puts "\nWelcome to the Risk of Rain 2 CLI Cheatsheet."
    puts "What type of information are you looking for?"
    puts ""
    list_choices
  end

  def list_choices
    puts <<~DOC
      1. Items
      2. Survivors
      3. Artifacts
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
    when "2"
      fetch_survivors
    when "3"
      fetch_artifacts
    when "exit"
      puts "Womp, womp. See you later."
    else
      "You must select a number or type 'exit'"
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