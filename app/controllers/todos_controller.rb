class TodosController < ApplicationController

    before_action :set_todo, only: [:show, :update, :destroy]

    def index

    end

    def show

    end

    def update

    end

    def destroy

    end


    def create
        @todo = Todo.new(todo_params)
        if @todo.save
            render json: @todo
        else
            render json: @todo.errors, status: :unprocessable_entity
        end
    end

    private
    # gets a todo based on its ID
    def set_todo
        @todo = Todo.find(params[:id])
    end

    def todo_params
        params.require(:todo).permit(:id, :title, :completed)
    end

end
