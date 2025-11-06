class TweetsController < ApplicationController

  if params[:search] == nil
    @couintries= Country.all
  elsif params[:search] == ''
    @countries= Country.all
  else
        #部分検索
        @countries = Country.where("body LIKE ? ",'%' + params[:search] + '%')
      end

end