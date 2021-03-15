class Notes
attr_accessor :notes

  def initialize(server)
    @notes = []
    @server = server
  end

  def add_note
    puts "Type your note here"
    note = @server.server.accept.gets.chomp
    @notes << note
    puts "Your note has been stored"
  end

end
