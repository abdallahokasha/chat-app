class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :update, :destroy]

  # GET /messages
  # def index
  #  @messages = Message.all
  #
  #  render json: @messages
  #end
  def index
    if params[:chat_id]
        @messages = Chat.find(params[:chat_id]).messages
    else
        @messages = Message.all
    end
    render json: @messages
  end

  # GET /messages/1
  def show
    render json: @message
  end

  # POST /messages
  def create
    @message = Message.new(message_params)

    if @message.save
      render json: @message, status: :created, location: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /messages/1
  def update
    if @message.update(message_params)
      render json: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end
  
  def search
    puts params[:description]
    @messages = params[:description].nil? ? [] : Message.search([params[:description], params[:chat_id]])
    render json: @messages
  end

  # DELETE /messages/1
  def destroy
    @message.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def message_params
      params.require(:message).permit(:description, :chat_id)
    end
end
