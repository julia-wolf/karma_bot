require 'slack-ruby-bot'
require 'pry'

class KarmaBot < SlackRubyBot::Bot
  command 'ping' do |client, data, match|
    client.say(text: 'pong', channel: data.channel)
  end

  command /^<@[A-Z0-9]{9}> [-+]{2}$/ do |client, data, match|
    binding.pry
    client.say(text: 'hi', channel: data.channel)
  end
end

KarmaBot.run

# @bot @person --
# @bot @person ++

# disallow the use of '+-'
# find acceptable format of allowed usernames in slack
# find acceptable maximum and minum length of allowed usernames in slack
# how long can be user identificators? Assumption: 9 symbols
# look at methods scan, mention

# "text":"<@UG4DA3PHU> <@UG4D8392A> ++"
