class TweetsController < ApplicationController
  def index
      if params[:search] == nil
        @countries= Country.all
      elsif params[:search] == ''
        @countries= Country.all
      else
        @countries = Country.where("body LIKE ? ",'%' + params[:search] + '%')
      end