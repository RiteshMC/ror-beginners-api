class PostController < ApplicationController
  before_action :authenticate_user

  # # GET /posts
  # def index
  #   @users = User.all
  # end

  # # GET /posts/self
  # def show
  #   @post = @current_user
  # end

  # # POST /posts
  def create
    form = PostCreateForm.new(params)
    return error_validation(form.errors) if form.invalid?

    @post = Post.new
    @post.author_id = @current_user.id
    @post.title = params[:title]
    @post.meta_title = params[:meta_title]
    @post.slug = params[:slug]
    @post.summary = params[:summary]
    @post.content = params[:content]

    return error_validation(@post.errors) if @post.invalid?

    @post.save!
  end

  # # PATCH/PUT /posts/self
  # def update
  #   form = UserUpdateForm.new(params)
  #   error_validation(form.errors) if form.invalid?
  #
  #   @post = @current_user
  #
  #   @post.first_name = form.first_name unless form.first_name.nil?
  #   @post.last_name = form.last_name unless form.last_name.nil?
  #   @post.first_name_kana = form.first_name_kana unless form.first_name_kana.nil?
  #   @post.last_name_kana = form.last_name_kana unless form.last_name_kana.nil?
  #   @post.gender = form.gender unless form.gender.nil?
  #   @post.email = form.email unless form.email.nil?
  #   @post.password = BCrypt::Password.create(form.password) unless form.password.nil?
  #   @post.birth_date = form.birth_date unless form.birth_date.nil?
  #   @post.height = form.height unless form.height.nil?
  #   @post.weight = form.weight unless form.weight.nil?
  #   @post.set_age(@post.birth_date)
  #
  #   return error_validation(@post.errors) if @post.invalid?
  #
  #   @post.save!
  # end
  #
  # # DELETE /posts/self
  # def destroy
  #   @post = @current_user
  #   @post.destroy
  # end
end
