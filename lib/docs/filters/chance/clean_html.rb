module Docs
  class Chance
    class CleanHtmlFilter < Filter
      def call
        # Remove Introduction, Upgrading, etc.
        #while doc.child['id'] != 'documentation'
        # doc.child.remove
        #end

        # Remove Examples, FAQ, etc.
        #while doc.children.last['id'] != 'faq'
        #  doc.children.last.remove
        #end

        css('#faq', '.run').remove

        css('tt').each do |node|
          node.name = 'code'
        end

        doc
      end
    end
  end
end
