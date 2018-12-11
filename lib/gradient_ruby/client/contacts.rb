module GradientRuby
  class Client
    module Contacts
      def search_contacts(search_query, options = {})
        contacts = get 'clients', {query: { searchString: search_query}}
        contacts.map { |contact_params| GradientRuby::Models::Contact.new contact_params, self }
      end

      def contacts
        contacts = get 'clients'
        contacts.map { |contact_params| GradientRuby::Models::Contact.new contact_params, self }
      end

      def contact(contact_id)
        contact = get "clients/#{contact_id}"
        GradientRuby::Models::Contact.new contact, self
      end

      def create_contact(params)
        contact = GradientRuby::Models::Contact.new params, self
        contact.save
      end

      def update_contact(contact_id, params)
        contact = GradientRuby::Models::Contact.new merge_contact_id(contact_id, params), self
        contact.save
      end

      private

      def merge_contact_id(contact_id, params)
        client = params[:client].merge('id' => contact_id)
        params.merge(client: client)
      end
    end
  end
end
