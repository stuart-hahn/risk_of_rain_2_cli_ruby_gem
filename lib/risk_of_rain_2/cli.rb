class RiskOfRain2::CLI
  
  def call
    puts "\nWelcome to the Risk of Rain 2 CLI Cheatsheet."
    puts ""
    puts "What type of information are you looking for?"
    list_choices
  end

  def list_choices
    puts <<~DOC
    1. Items
    2. Survivors
    3. Artifacts
  DOC
  end

end