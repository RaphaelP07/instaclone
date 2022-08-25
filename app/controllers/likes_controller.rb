class LikesController < ApplicationController
  def like_post
    @post = Post.find(params[:post_id])
    current_user.likes.create(likeable_type: "Post", likeable_id: @post.id)
  end
  
  def like_comment
    @comment = Comment.find(params[:comment_id])
    current_user.likes.create(likeable_type: "Comment", likeable_id: @comment.id)
  end

  def unlike_post
    @post = Post.find(params[:post_id])
    current_user.likes.where(likeable_type: "Post", likeable_id: @post.id).delete_all
  end

  def unlike_comment
    @comment = Comment.find(params[:comment_id])
    current_user.likes.where(likeable_type: "Comment", likeable_id: @comment.id).delete_all
  end
end
