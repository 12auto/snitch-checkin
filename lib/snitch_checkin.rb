require "snitch_checkin/version"

module SnitchCheckin
  
  def self.check_in_snitch(snitch_name, message = nil)
    snitches = YAML.load_file Rails.root.join("config", "snitches.yml")
    return unless snitches
    message_option = "-d 'm=#{message}'" if message
    `curl #{message_option} #{snitches["#{snitch_name}"]}`
  end

end
