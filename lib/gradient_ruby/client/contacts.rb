module GradientRuby
  class Client
    module Contacts
      def search_contacts(search_query, options = {})
        contacts = get 'contacts', {query: { name: search_query}}
        contacts['contacts'].map { |contact_params| GradientRuby::Models::Contact.new contact_params, self }
      end

      def contacts
        contacts = get 'contacts'
        contacts['contacts'].map { |contact_params| GradientRuby::Models::Contact.new contact_params, self }
      end

      def contact(contact_id)
        contact = get "contacts/#{contact_id}"
        GradientRuby::Models::Contact.new contact, self
      end

      def create_contact(params)
        contact = GradientRuby::Models::Contact.new params, self
        contact.save
      end

      def update_contact(contact_id, params)
        contact = GradientRuby::Models::Contact.new params.merge(id: contact_id), self
        contact.save
      end
    end
  end
end
