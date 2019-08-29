json.id         @message.id
json.image      @message.image.url
json.user_name  @message.user.name
json.date       @message.created_at.to_s(:datetime)
json.content    @message.content