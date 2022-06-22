# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :users, resolver: Resolvers::UsersResolver
    field :user, resolver: Resolvers::UserResolver

    field :cars, resolver: Resolvers::CarsResolver
    field :car, resolver: Resolvers::CarsResolver

    field :cars_owners_documents,
          resolver: Resolvers::CarsOwnersDocumentResolver
    field :cars_owners_document, resolver: Resolvers::CarsOwnersDocumentResolver

    field :consumables, resolver: Resolvers::Consumables::ConsumablesResolver
    field :consumable, resolver: Resolvers::Consumables::ConsumableResolver

    field :parts, resolver: Resolvers::Parts::PartsResolver
    field :part, resolver: Resolvers::Parts::PartResolver

    field :works, resolver: Resolvers::Works::WorksResolver
    field :work, resolver: Resolvers::Works::WorkResolver

    field :services, resolver: Resolvers::Services::ServicesResolver
    field :service, resolver: Resolvers::Services::ServiceResolver

    field :organizations,
          resolver: Resolvers::Organizations::OrganizationsResolver
    field :organization,
          resolver: Resolvers::Organizations::OrganizationResolver

    # add order comments to order type
    field :orders, resolver: Resolvers::Orders::OrdersResolver
    field :order, resolver: Resolvers::Orders::OrderResolver

    field :comments, resolver: Resolvers::Comments::CommentsResolver
    field :comment, resolver: Resolvers::Comments::CommentResolver
  end
end
