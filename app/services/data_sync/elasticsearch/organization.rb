module DataSync
  module Elasticsearch
    class Organization < Base
      RELATED_DOCS = %i[
        articles
      ].freeze

      SHARED_FIELDS = %i[
        slug
        name
        profile_image
      ].freeze

      delegate :articles, to: :@updated_record

      def force_sync
        sync_related_documents
      end
    end
  end
end
