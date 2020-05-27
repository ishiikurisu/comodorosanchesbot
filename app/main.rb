require 'telegram_bot'
require './app/sanches/comodoro.rb'

class App
  def initialize api, where
    @bot = TelegramBot.new token: api
    @comodoro = ComodoroSanches.new where
  end

  def run
    @bot.get_updates do |message|
      puts "@#{message.from.username}: #{message.text}"
      command = message.get_command_for @bot

      message.reply do |reply|
        case command
        when '/start'
          reply.text = @comodoro.hello
        else
          reply.text = @comodoro.talk
        end
        puts "sending #{reply.text.inspect} to @#{message.from.username}"
        reply.send_with @bot
      end
    end
  end

end


if __FILE__ == $PROGRAM_NAME
  app = App.new ARGV[0], ARGV[1]
  begin
    app.run
  rescue Interrupt => e
    puts 'Program interrupted'
  end
end
