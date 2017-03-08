# frozen_string_literal: true
class EntriesController < ApplicationController
  def index; end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.create(entry_params)
    redirect_to root_path
  end

  private

  def entry_params
    params.require(:entry).permit(:three, :two, :one)
  end
end
