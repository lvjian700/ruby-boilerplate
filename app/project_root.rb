require 'pathname'

module App
  def self.project_root
    @project_root ||= Pathname.new(File.expand_path('../../', __FILE__)).freeze
  end
end
