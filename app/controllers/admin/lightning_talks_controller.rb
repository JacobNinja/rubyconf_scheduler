class Admin::LightningTalksController < ApplicationController
  http_basic_authenticate_with :name => "rubyconf", :password => "ph0enix"
  respond_to :html, :js

  def index
    @lightning_talks = LightningTalk.first_come.incomplete
  end

  def start
    @lightning_talk = LightningTalk.find(params[:id])
    @lightning_talk.update_attribute(:started_at, Time.zone.now)
  end

  def complete
    @lightning_talk = LightningTalk.find(params[:id])
    @lightning_talk.update_attribute(:completed_at, Time.zone.now)

    @next = LightningTalk.first_come.incomplete.first
  end
end
