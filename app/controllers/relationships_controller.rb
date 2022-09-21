class RelationshipsController < ApplicationController
  def index
    @relationships = Relationship.all
    render template: "relationships/index"
  end

  def new
    @relationship = Relationship.new
    render template: "relationships/new"
  end

  def create
    @relationship = Relationship.new(
      follower_id: params[:relationship][:follower_id],
      leader_id: params[:relationship][:leader_id],
    )
    @relationship.save
    redirect_to "/relationships"
  end
end
