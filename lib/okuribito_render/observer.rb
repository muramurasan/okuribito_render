module OkuribitoRender
  class Observer
    def initialize
      @rendered = Set.new([])
    end

    def start
      ActiveSupport::Notifications.subscribe "render_template.action_view" do |*args|
        data = args.extract_options!
        unless @rendered.include?(data[:identifier])
          puts "#{data[:identifier]}"
          @rendered.add(data[:identifier])
        end
      end

      ActiveSupport::Notifications.subscribe "render_partial.action_view" do |*args|
        data = args.extract_options!
        unless @rendered.include?(data[:identifier])
          puts "#{data[:identifier]}"
          @rendered.add(data[:identifier])
        end
      end
    end
  end
end
