require 'yaml'
require 'httparty'


class PostIt
  attr_reader :topic, :students, :config, :base_url
  attr_accessor :uri
  def initialize(cmd_args)
    @topic = cmd_args.first
    @config   = YAML.load_file("config.yml")
    @base_url = "http://localhost:3000/computers"
    # parse_for_students
  end

  def send_request!
    response =  HTTParty.post(base_url, query: {request: @config})
    puts response.body
  end

  private

   def build_query
    if topic
      {
        request:
      {
        topic: topic,
        student: students
      }.merge(config)
    }
    else
      params = {
        request:
        {
          student: students
             }.merge(config)
        }
    end
  end

  # def parse_for_students
  #   weare = `whoami`
  #   @students ||= weare.
  #                   split(/\n/)[-2].
  #                   sub("Current name:  ", "").
  #                   split("&").
  #                   map(&:strip).
  #                   join(" ")
  # end
end

postit = PostIt.new(ARGV)
postit.send_request!
