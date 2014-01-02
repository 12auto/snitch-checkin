require "snitch_checkin/version"

module SnitchCheckin
  
  def self.check_in_snitch(snitch_name, messsage)
    snitches = YAML.load_file Rails.root.join("config", "snitches.yml")
    `curl -d "m=#{message}" #{snitches["#{snitch_name}"]}` if snitches
  end

end
