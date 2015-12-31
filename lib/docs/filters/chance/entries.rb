module Docs
  class Chance
    class EntriesFilter < Docs::EntriesFilter
      def additional_entries
        entries = []
        type = nil

        css('[id]').each do |node|
          # Module
          if node.name == 'h2'
            # type = node.content.remove 'Chance.'
            # if type.capitalize! # sync, history
            #   entries << [node.content, node['id'], type]
            # end
            # next
          end

          entries << [name, node['id'], type]
        end

        entries
      end
    end
  end
end
