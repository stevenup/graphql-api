CommentType = GraphQL::ObjectType.define do
  name 'Comment'
  field :id, types.Int
  field :content, types.String

  field :user, -> { UserType } do
    resolve -> (obj, args, ctx) {
      RecordLoader.for(User).load(obj.user_id)
    }
  end
  
  field :article, -> { ArticleType } do
    resolve -> (obj, args, ctx) {
      RecordLoader.for(Article).load(obj.article_id)
    }
  end
end