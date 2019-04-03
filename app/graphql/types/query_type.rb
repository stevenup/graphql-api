Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :article do
    type ArticleType
    argument :id, !types.ID
    description "Find a Article by ID"
    resolve ->(obj, args, ctx) {
      Article.find_by_id(args[:id])
    }
  end
  
  field :user do
    type UserType
    argument :id, !types.ID
    description "Find a User by ID"
    resolve ->(obj, args, ctx) {
      User.find_by_id(args[:id])
    }
  end
  
  field :comment do
    type CommentType
    argument :id, !types.ID
    description "Find a Comment by ID"
    resolve ->(obj, args, ctx) {
      Comment.find_by_id(args[:id])
    }
  end
end
