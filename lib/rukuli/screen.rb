# A Screen object defines a special type of Rukuli::Region that represents
# the entire screen.
#
# TODO: Test the Screen object with multiple monitors attached.
#
module Rukuli
  class Screen < Region

    # Public: creates a new Screen object
    #
    # Examples
    #
    #   screen = Rukuli::Screen.new
    #
    # Returns the newly initialized Screen object
    def initialize
      @java_obj = org.sikuli.script::Screen.new()
    end

    # Public: capture region on screen
    # Returns path to saved capture
    def capture region
      @java_obj.java_send(:capture, [Java::int, Java::int, Java::int, Java::int],
                                    region.x, region.y, region.width, region.height).getFilename()
    end
  end
end
