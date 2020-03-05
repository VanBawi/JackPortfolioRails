class CommentsController < ApplicationController

    def create
        @comment = current_user.comment.build(comment_params)
    end

    private
    
    def comment_params
        param.require(:comment).permit(:content)
    end
end
