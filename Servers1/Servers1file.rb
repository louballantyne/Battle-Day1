require 'socket'
require_relative 'Servers1Note'
class Server

  def initialize
    @note_app = Notes.new(self)
    @server = TCPServer.new(2345)
    @socket = @server.accept

    loop do
      @socket.puts "Add your note?"
      they_said = @socket.gets.chomp
      break if they_said == 'quit'
      @note_app.add_note if they_said == "yes"

      @socket.puts "You said: #{they_said}!"
    end
    @socket.close
  end
end
Server.new
