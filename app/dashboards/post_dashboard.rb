require "administrate/base_dashboard"

class PostDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    category: Field::BelongsTo,
    subcategory: Field::BelongsTo,
    sub2category: Field::BelongsTo,
    filetype: Field::BelongsTo,
    filetype2: Field::BelongsTo,
    comments: Field::HasMany,
    likes: Field::HasMany,
    like_posts: Field::HasMany.with_options(class_name: "Post"),
    id: Field::Number,
    title: Field::String,
    body: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    file: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :category,
    :subcategory,
    :sub2category,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :category,
    :subcategory,
    :sub2category,
    :filetype,
    :filetype2,
    :comments,
    :likes,
    :like_posts,
    :id,
    :title,
    :body,
    :created_at,
    :updated_at,
    :file,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :category,
    :subcategory,
    :sub2category,
    :filetype,
    :filetype2,
    :comments,
    :likes,
    :like_posts,
    :title,
    :body,
    :file,
  ].freeze

  # Overwrite this method to customize how posts are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(post)
  #   "Post ##{post.id}"
  # end
end
