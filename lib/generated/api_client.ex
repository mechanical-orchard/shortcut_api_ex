defmodule Generated.ApiClient do
  @moduledoc """
  Generated API client functions
  """

  alias ShortcutApi.ApiHelpers
  @behaviour Generated.ApiClientBehavior

    @doc """
  GET /api/v3/stories/{story-public-id}/history
  """
  def get_api_v3_stories__history(token, story-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/stories/#{story-public-id}/history", 
      token
    )
  end


  @doc """
  This endpoint allows you to delete a Comment from an Epic.
  """
  def delete_api_v3_epics__comments_(token, epic-public-id, comment-public-id) do
    ApiHelpers.make_request(
      :delete,
      "/api/v3/epics/#{epic-public-id}/comments/#{comment-public-id}", 
      token
    )
  end


  @doc """
  This endpoint returns information about the selected Epic Comment.
  """
  def get_api_v3_epics__comments_(token, epic-public-id, comment-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/epics/#{epic-public-id}/comments/#{comment-public-id}", 
      token
    )
  end


  @doc """
  This endpoint allows you to create a nested Comment reply to an existing Epic Comment.
  """
  def post_api_v3_epics__comments_(token, epic-public-id, comment-public-id, CreateCommentComment) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/epics/#{epic-public-id}/comments/#{comment-public-id}", 
      token, json: CreateCommentComment
    )
  end


  @doc """
  This endpoint allows you to update a threaded Comment on an Epic.
  """
  def put_api_v3_epics__comments_(token, epic-public-id, comment-public-id, UpdateComment) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/epics/#{epic-public-id}/comments/#{comment-public-id}", 
      token, json: UpdateComment
    )
  end


  @doc """
  Unlinks a Comment from its linked Slack thread (Comment replies and Slack replies will no longer be synced)
  """
  def post_api_v3_stories__comments__unlink-from-slack(token, story-public-id, comment-public-id) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/stories/#{story-public-id}/comments/#{comment-public-id}/unlink-from-slack", 
      token
    )
  end


  @doc """
  Search lets you search Epics and Stories based on desired parameters. Since ordering of the results can change over time (due to search ranking decay, new Epics and Stories being created), the `next` value from the previous response can be used as the path and query string for the next page to ensure stable ordering.
  """
  def get_api_v3_search(token, query, page_size, detail, next, entity_types) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/search", 
      token, params: query, params: page_size, params: detail, params: next, params: entity_types
    )
  end


  @doc """
  List all of the Epics within the Objective.
  """
  def get_api_v3_objectives__epics(token, objective-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/objectives/#{objective-public-id}/epics", 
      token
    )
  end


  @doc """
  Returns information about a Member.
  """
  def get_api_v3_members_(token, member-public-id, org-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/members/#{member-public-id}", 
      token, params: org-public-id
    )
  end


  @doc """
  A group in our API maps to a "Team" within the Shortcut Product. A Team is a collection of Users that can be associated to Stories, Epics, and Iterations within Shortcut.
  """
  def get_api_v3_groups(token) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/groups", 
      token
    )
  end


  @doc """
  POST /api/v3/groups
  """
  def post_api_v3_groups(token, CreateGroup) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/groups", 
      token, json: CreateGroup
    )
  end


  @doc """
  Delete Epic can be used to delete the Epic. The only required parameter is Epic ID.
  """
  def delete_api_v3_epics_(token, epic-public-id) do
    ApiHelpers.make_request(
      :delete,
      "/api/v3/epics/#{epic-public-id}", 
      token
    )
  end


  @doc """
  Get Epic returns information about the selected Epic.
  """
  def get_api_v3_epics_(token, epic-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/epics/#{epic-public-id}", 
      token
    )
  end


  @doc """
  Update Epic can be used to update numerous fields in the Epic. The only required parameter is Epic ID, which can be found in the Shortcut UI.
  """
  def put_api_v3_epics_(token, epic-public-id, UpdateEpic) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/epics/#{epic-public-id}", 
      token, json: UpdateEpic
    )
  end


  @doc """
  List Objectives returns a list of all Objectives and their attributes.
  """
  def get_api_v3_objectives(token) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/objectives", 
      token
    )
  end


  @doc """
  Create Objective allows you to create a new Objective in Shortcut.
  """
  def post_api_v3_objectives(token, CreateObjective) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/objectives", 
      token, json: CreateObjective
    )
  end


  @doc """
  (Deprecated: Use 'Delete Objective') Delete Milestone can be used to delete any Milestone.
  """
  def delete_api_v3_milestones_(token, milestone-public-id) do
    ApiHelpers.make_request(
      :delete,
      "/api/v3/milestones/#{milestone-public-id}", 
      token
    )
  end


  @doc """
  (Deprecated: Use 'Get Objective') Get Milestone returns information about a chosen Milestone.
  """
  def get_api_v3_milestones_(token, milestone-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/milestones/#{milestone-public-id}", 
      token
    )
  end


  @doc """
  (Deprecated: Use 'Update Objective') Update Milestone can be used to update Milestone properties.
  """
  def put_api_v3_milestones_(token, milestone-public-id, UpdateMilestone) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/milestones/#{milestone-public-id}", 
      token, json: UpdateMilestone
    )
  end


  @doc """
  Get Repository returns information about the selected Repository.
  """
  def get_api_v3_repositories_(token, repo-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/repositories/#{repo-public-id}", 
      token
    )
  end


  @doc """
  DELETE /api/v3/entity-templates/{entity-template-public-id}
  """
  def delete_api_v3_entity-templates_(token, entity-template-public-id) do
    ApiHelpers.make_request(
      :delete,
      "/api/v3/entity-templates/#{entity-template-public-id}", 
      token
    )
  end


  @doc """
  Get Entity Template returns information about a given entity template.
  """
  def get_api_v3_entity-templates_(token, entity-template-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/entity-templates/#{entity-template-public-id}", 
      token
    )
  end


  @doc """
  Update an entity template's name or its contents.
  """
  def put_api_v3_entity-templates_(token, entity-template-public-id, UpdateEntityTemplate) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/entity-templates/#{entity-template-public-id}", 
      token, json: UpdateEntityTemplate
    )
  end


  @doc """
  List all the entity templates for the Workspace.
  """
  def get_api_v3_entity-templates(token) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/entity-templates", 
      token
    )
  end


  @doc """
  Create a new entity template for the Workspace.
  """
  def post_api_v3_entity-templates(token, CreateEntityTemplate) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/entity-templates", 
      token, json: CreateEntityTemplate
    )
  end


  @doc """
  Search Objectives lets you search Objectives based on desired parameters. Since ordering of results can change over time (due to search ranking decay, new Objectives being created), the `next` value from the previous response can be used as the path and query string for the next page to ensure stable ordering.
  """
  def get_api_v3_search_objectives(token, query, page_size, detail, next, entity_types) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/search/objectives", 
      token, params: query, params: page_size, params: detail, params: next, params: entity_types
    )
  end


  @doc """
  Delete a reaction from any story comment.
  """
  def delete_api_v3_stories__comments__reactions(token, story-public-id, comment-public-id, CreateOrDeleteStoryReaction) do
    ApiHelpers.make_request(
      :delete,
      "/api/v3/stories/#{story-public-id}/comments/#{comment-public-id}/reactions", 
      token, json: CreateOrDeleteStoryReaction
    )
  end


  @doc """
  Create a reaction to a story comment.
  """
  def post_api_v3_stories__comments__reactions(token, story-public-id, comment-public-id, CreateOrDeleteStoryReaction) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/stories/#{story-public-id}/comments/#{comment-public-id}/reactions", 
      token, json: CreateOrDeleteStoryReaction
    )
  end


  @doc """
  Delete Label can be used to delete any Label.
  """
  def delete_api_v3_labels_(token, label-public-id) do
    ApiHelpers.make_request(
      :delete,
      "/api/v3/labels/#{label-public-id}", 
      token
    )
  end


  @doc """
  Get Label returns information about the selected Label.
  """
  def get_api_v3_labels_(token, label-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/labels/#{label-public-id}", 
      token
    )
  end


  @doc """
  Update Label allows you to replace a Label name with another name. If you try to name a Label something that already exists, you will receive a 422 response.
  """
  def put_api_v3_labels_(token, label-public-id, UpdateLabel) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/labels/#{label-public-id}", 
      token, json: UpdateLabel
    )
  end


  @doc """
  List Projects returns a list of all Projects and their attributes.
  """
  def get_api_v3_projects(token) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/projects", 
      token
    )
  end


  @doc """
  Create Project is used to create a new Shortcut Project.
  """
  def post_api_v3_projects(token, CreateProject) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/projects", 
      token, json: CreateProject
    )
  end


  @doc """
  Get a list of all Stories in an Iteration.
  """
  def get_api_v3_iterations__stories(token, iteration-public-id, includes_description) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/iterations/#{iteration-public-id}/stories", 
      token, params: includes_description
    )
  end


  @doc """
  Enables Iterations for the current workspace
  """
  def put_api_v3_iterations_enable(token) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/iterations/enable", 
      token
    )
  end


  @doc """
  Get a list of all Comments on an Epic.
  """
  def get_api_v3_epics__comments(token, epic-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/epics/#{epic-public-id}/comments", 
      token
    )
  end


  @doc """
  This endpoint allows you to create a threaded Comment on an Epic.
  """
  def post_api_v3_epics__comments(token, epic-public-id, CreateEpicComment) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/epics/#{epic-public-id}/comments", 
      token, json: CreateEpicComment
    )
  end


  @doc """
  DELETE /api/v3/custom-fields/{custom-field-public-id}
  """
  def delete_api_v3_custom-fields_(token, custom-field-public-id) do
    ApiHelpers.make_request(
      :delete,
      "/api/v3/custom-fields/#{custom-field-public-id}", 
      token
    )
  end


  @doc """
  GET /api/v3/custom-fields/{custom-field-public-id}
  """
  def get_api_v3_custom-fields_(token, custom-field-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/custom-fields/#{custom-field-public-id}", 
      token
    )
  end


  @doc """
  Update Custom Field can be used to update the definition of a Custom Field. The order of items in the 'values' collection is interpreted to be their ascending sort order.To delete an existing enum value, simply omit it from the 'values' collection. New enum values may be created inline by including an object in the 'values' collection having a 'value' entry with no 'id' (eg. {'value': 'myNewValue', 'color_key': 'green'}).
  """
  def put_api_v3_custom-fields_(token, custom-field-public-id, UpdateCustomField) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/custom-fields/#{custom-field-public-id}", 
      token, json: UpdateCustomField
    )
  end


  @doc """
  GET /api/v3/iterations
  """
  def get_api_v3_iterations(token) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/iterations", 
      token
    )
  end


  @doc """
  POST /api/v3/iterations
  """
  def post_api_v3_iterations(token, CreateIteration) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/iterations", 
      token, json: CreateIteration
    )
  end


  @doc """
  Delete Multiple Stories allows you to delete multiple archived stories at once.
  """
  def delete_api_v3_stories_bulk(token, DeleteStories) do
    ApiHelpers.make_request(
      :delete,
      "/api/v3/stories/bulk", 
      token, json: DeleteStories
    )
  end


  @doc """
  Create Multiple Stories allows you to create multiple stories in a single request using the same syntax as [Create Story](https://developer.shortcut.com/api/rest/v3#create-story).
  """
  def post_api_v3_stories_bulk(token, CreateStories) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/stories/bulk", 
      token, json: CreateStories
    )
  end


  @doc """
  Update Multiple Stories allows you to make changes to numerous stories at once.
  """
  def put_api_v3_stories_bulk(token, UpdateStories) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/stories/bulk", 
      token, json: UpdateStories
    )
  end


  @doc """
  List Files returns a list of all UploadedFiles in the workspace.
  """
  def get_api_v3_files(token) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/files", 
      token
    )
  end


  @doc """
  Upload Files uploads one or many files and optionally associates them with a story.
   Use the multipart/form-data content-type to upload.
   Each `file` key should contain a separate file.
   Each UploadedFile's name comes from the Content-Disposition header "filename" directive for that field.
  """
  def post_api_v3_files(token, story_id, file0, file1, file2, file3) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/files", 
      token
    )
  end


  @doc """
  Returns the Epic Workflow for the Workspace.
  """
  def get_api_v3_epic-workflow(token) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/epic-workflow", 
      token
    )
  end


  @doc """
  Disables Iterations for the current workspace
  """
  def put_api_v3_iterations_disable(token) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/iterations/disable", 
      token
    )
  end


  @doc """
  Delete Category can be used to delete any Category.
  """
  def delete_api_v3_categories_(token, category-public-id) do
    ApiHelpers.make_request(
      :delete,
      "/api/v3/categories/#{category-public-id}", 
      token
    )
  end


  @doc """
  Get Category returns information about the selected Category.
  """
  def get_api_v3_categories_(token, category-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/categories/#{category-public-id}", 
      token
    )
  end


  @doc """
  Update Category allows you to replace a Category name with another name. If you try to name a Category something that already exists, you will receive a 422 response.
  """
  def put_api_v3_categories_(token, category-public-id, UpdateCategory) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/categories/#{category-public-id}", 
      token, json: UpdateCategory
    )
  end


  @doc """
  GET /api/v3/custom-fields
  """
  def get_api_v3_custom-fields(token) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/custom-fields", 
      token
    )
  end


  @doc """
  List all of the Epics with the Label.
  """
  def get_api_v3_labels__epics(token, label-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/labels/#{label-public-id}/epics", 
      token
    )
  end


  @doc """
  Delete Objective can be used to delete any Objective.
  """
  def delete_api_v3_objectives_(token, objective-public-id) do
    ApiHelpers.make_request(
      :delete,
      "/api/v3/objectives/#{objective-public-id}", 
      token
    )
  end


  @doc """
  Get Objective returns information about a chosen Objective.
  """
  def get_api_v3_objectives_(token, objective-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/objectives/#{objective-public-id}", 
      token
    )
  end


  @doc """
  Update Objective can be used to update Objective properties.
  """
  def put_api_v3_objectives_(token, objective-public-id, UpdateObjective) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/objectives/#{objective-public-id}", 
      token, json: UpdateObjective
    )
  end


  @doc """
  Lists Comments associated with a Story
  """
  def get_api_v3_stories__comments(token, story-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/stories/#{story-public-id}/comments", 
      token
    )
  end


  @doc """
  Create Comment allows you to create a Comment on any Story.
  """
  def post_api_v3_stories__comments(token, story-public-id, CreateStoryComment) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/stories/#{story-public-id}/comments", 
      token, json: CreateStoryComment
    )
  end


  @doc """
  Get a list of all Stories in an Epic.
  """
  def get_api_v3_epics__stories(token, epic-public-id, includes_description) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/epics/#{epic-public-id}/stories", 
      token, params: includes_description
    )
  end


  @doc """
  Get Key Result returns information about a chosen Key Result.
  """
  def get_api_v3_key-results_(token, key-result-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/key-results/#{key-result-public-id}", 
      token
    )
  end


  @doc """
  Update Key Result allows updating a Key Result's name or initial, observed, or target values.
  """
  def put_api_v3_key-results_(token, key-result-public-id, UpdateKeyResult) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/key-results/#{key-result-public-id}", 
      token, json: UpdateKeyResult
    )
  end


  @doc """
  List Labels returns a list of all Labels and their attributes.
  """
  def get_api_v3_labels(token, slim) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/labels", 
      token, params: slim
    )
  end


  @doc """
  Create Label allows you to create a new Label in Shortcut.
  """
  def post_api_v3_labels(token, CreateLabelParams) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/labels", 
      token, json: CreateLabelParams
    )
  end


  @doc """
  List all of the Stories with the Label.
  """
  def get_api_v3_labels__stories(token, label-public-id, includes_description) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/labels/#{label-public-id}/stories", 
      token, params: includes_description
    )
  end


  @doc """
  DELETE /api/v3/iterations/{iteration-public-id}
  """
  def delete_api_v3_iterations_(token, iteration-public-id) do
    ApiHelpers.make_request(
      :delete,
      "/api/v3/iterations/#{iteration-public-id}", 
      token
    )
  end


  @doc """
  GET /api/v3/iterations/{iteration-public-id}
  """
  def get_api_v3_iterations_(token, iteration-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/iterations/#{iteration-public-id}", 
      token
    )
  end


  @doc """
  PUT /api/v3/iterations/{iteration-public-id}
  """
  def put_api_v3_iterations_(token, iteration-public-id, UpdateIteration) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/iterations/#{iteration-public-id}", 
      token, json: UpdateIteration
    )
  end


  @doc """
  List Epics returns a list of all Epics and their attributes.
  """
  def get_api_v3_epics(token, includes_description) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/epics", 
      token, params: includes_description
    )
  end


  @doc """
  Create Epic allows you to create a new Epic in Shortcut.
  """
  def post_api_v3_epics(token, CreateEpic) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/epics", 
      token, json: CreateEpic
    )
  end


  @doc """
  Returns a list of all Objectives with the Category.
  """
  def get_api_v3_categories__objectives(token, category-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/categories/#{category-public-id}/objectives", 
      token
    )
  end


  @doc """
  List Category Milestones returns a list of all Milestones with the Category.
  """
  def get_api_v3_categories__milestones(token, category-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/categories/#{category-public-id}/milestones", 
      token
    )
  end


  @doc """
  Returns information about the authenticated member.
  """
  def get_api_v3_member(token) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/member", 
      token
    )
  end


  @doc """
  Removes the relationship between the stories for the given Story Link.
  """
  def delete_api_v3_story-links_(token, story-link-public-id) do
    ApiHelpers.make_request(
      :delete,
      "/api/v3/story-links/#{story-link-public-id}", 
      token
    )
  end


  @doc """
  Returns the stories and their relationship for the given Story Link.
  """
  def get_api_v3_story-links_(token, story-link-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/story-links/#{story-link-public-id}", 
      token
    )
  end


  @doc """
  Updates the stories and/or the relationship for the given Story Link.
  """
  def put_api_v3_story-links_(token, story-link-public-id, UpdateStoryLink) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/story-links/#{story-link-public-id}", 
      token, json: UpdateStoryLink
    )
  end


  @doc """
  Search Epics lets you search Epics based on desired parameters. Since ordering of stories can change over time (due to search ranking decay, new Epics being created), the `next` value from the previous response can be used as the path and query string for the next page to ensure stable ordering.
  """
  def get_api_v3_search_epics(token, query, page_size, detail, next, entity_types) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/search/epics", 
      token, params: query, params: page_size, params: detail, params: next, params: entity_types
    )
  end


  @doc """
  This endpoint allows you to unlink a productboard epic.
  """
  def post_api_v3_epics__unlink-productboard(token, epic-public-id) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/epics/#{epic-public-id}/unlink-productboard", 
      token
    )
  end


  @doc """
  List Categories returns a list of all Categories and their attributes.
  """
  def get_api_v3_categories(token) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/categories", 
      token
    )
  end


  @doc """
  Create Category allows you to create a new Category in Shortcut.
  """
  def post_api_v3_categories(token, CreateCategory) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/categories", 
      token, json: CreateCategory
    )
  end


  @doc """
  Delete Story can be used to delete any Story.
  """
  def delete_api_v3_stories_(token, story-public-id) do
    ApiHelpers.make_request(
      :delete,
      "/api/v3/stories/#{story-public-id}", 
      token
    )
  end


  @doc """
  Get Story returns information about a chosen Story.
  """
  def get_api_v3_stories_(token, story-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/stories/#{story-public-id}", 
      token
    )
  end


  @doc """
  Update Story can be used to update Story properties.
  """
  def put_api_v3_stories_(token, story-public-id, UpdateStory) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/stories/#{story-public-id}", 
      token, json: UpdateStory
    )
  end


  @doc """
  Enables the Story Template feature for the Workspace.
  """
  def put_api_v3_entity-templates_enable(token) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/entity-templates/enable", 
      token
    )
  end


  @doc """
  GET /api/v3/groups/{group-public-id}
  """
  def get_api_v3_groups_(token, group-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/groups/#{group-public-id}", 
      token
    )
  end


  @doc """
  PUT /api/v3/groups/{group-public-id}
  """
  def put_api_v3_groups_(token, group-public-id, UpdateGroup) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/groups/#{group-public-id}", 
      token, json: UpdateGroup
    )
  end


  @doc """
  Create Task is used to create a new task in a Story.
  """
  def post_api_v3_stories__tasks(token, story-public-id, CreateTask) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/stories/#{story-public-id}/tasks", 
      token, json: CreateTask
    )
  end


  @doc """
  Create Story From Template is used to add a new story derived from a template to your Shortcut Workspace.
  """
  def post_api_v3_stories_from-template(token, CreateStoryFromTemplateParams) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/stories/from-template", 
      token, json: CreateStoryFromTemplateParams
    )
  end


  @doc """
  Delete Linked File can be used to delete any previously attached Linked-File.
  """
  def delete_api_v3_linked-files_(token, linked-file-public-id) do
    ApiHelpers.make_request(
      :delete,
      "/api/v3/linked-files/#{linked-file-public-id}", 
      token
    )
  end


  @doc """
  Get File returns information about the selected Linked File.
  """
  def get_api_v3_linked-files_(token, linked-file-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/linked-files/#{linked-file-public-id}", 
      token
    )
  end


  @doc """
  Updated Linked File allows you to update properties of a previously attached Linked-File.
  """
  def put_api_v3_linked-files_(token, linked-file-public-id, UpdateLinkedFile) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/linked-files/#{linked-file-public-id}", 
      token, json: UpdateLinkedFile
    )
  end


  @doc """
  Search Milestones lets you search Milestones based on desired parameters. Since ordering of results can change over time (due to search ranking decay, new Milestones being created), the `next` value from the previous response can be used as the path and query string for the next page to ensure stable ordering.
  """
  def get_api_v3_search_milestones(token, query, page_size, detail, next, entity_types) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/search/milestones", 
      token, params: query, params: page_size, params: detail, params: next, params: entity_types
    )
  end


  @doc """
  Returns a list of all Workflows in the Workspace.
  """
  def get_api_v3_workflows(token) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/workflows", 
      token
    )
  end


  @doc """
  Delete Task can be used to delete any previously created Task on a Story.
  """
  def delete_api_v3_stories__tasks_(token, story-public-id, task-public-id) do
    ApiHelpers.make_request(
      :delete,
      "/api/v3/stories/#{story-public-id}/tasks/#{task-public-id}", 
      token
    )
  end


  @doc """
  Returns information about a chosen Task.
  """
  def get_api_v3_stories__tasks_(token, story-public-id, task-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/stories/#{story-public-id}/tasks/#{task-public-id}", 
      token
    )
  end


  @doc """
  Update Task can be used to update Task properties.
  """
  def put_api_v3_stories__tasks_(token, story-public-id, task-public-id, UpdateTask) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/stories/#{story-public-id}/tasks/#{task-public-id}", 
      token, json: UpdateTask
    )
  end


  @doc """
  (Deprecated: Use 'List Objectives') List Milestones returns a list of all Milestones and their attributes.
  """
  def get_api_v3_milestones(token) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/milestones", 
      token
    )
  end


  @doc """
  (Deprecated: Use 'Create Objective') Create Milestone allows you to create a new Milestone in Shortcut.
  """
  def post_api_v3_milestones(token, CreateMilestone) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/milestones", 
      token, json: CreateMilestone
    )
  end


  @doc """
  List Repositories returns a list of all Repositories and their attributes.
  """
  def get_api_v3_repositories(token) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/repositories", 
      token
    )
  end


  @doc """
  Disables the Story Template feature for the Workspace.
  """
  def put_api_v3_entity-templates_disable(token) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/entity-templates/disable", 
      token
    )
  end


  @doc """
  Delete Project can be used to delete a Project. Projects can only be deleted if all associated Stories are moved or deleted. In the case that the Project cannot be deleted, you will receive a 422 response.
  """
  def delete_api_v3_projects_(token, project-public-id) do
    ApiHelpers.make_request(
      :delete,
      "/api/v3/projects/#{project-public-id}", 
      token
    )
  end


  @doc """
  Get Project returns information about the selected Project.
  """
  def get_api_v3_projects_(token, project-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/projects/#{project-public-id}", 
      token
    )
  end


  @doc """
  Update Project can be used to change properties of a Project.
  """
  def put_api_v3_projects_(token, project-public-id, UpdateProject) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/projects/#{project-public-id}", 
      token, json: UpdateProject
    )
  end


  @doc """
  List Linked Files returns a list of all Linked-Files and their attributes.
  """
  def get_api_v3_linked-files(token) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/linked-files", 
      token
    )
  end


  @doc """
  Create Linked File allows you to create a new Linked File in Shortcut.
  """
  def post_api_v3_linked-files(token, CreateLinkedFile) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/linked-files", 
      token, json: CreateLinkedFile
    )
  end


  @doc """
  Get Workflow returns information about a chosen Workflow.
  """
  def get_api_v3_workflows_(token, workflow-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/workflows/#{workflow-public-id}", 
      token
    )
  end


  @doc """
  (Deprecated: Use 'List Objective Epics') List all of the Epics within the Milestone.
  """
  def get_api_v3_milestones__epics(token, milestone-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/milestones/#{milestone-public-id}/epics", 
      token
    )
  end


  @doc """
  Delete a Comment from any story.
  """
  def delete_api_v3_stories__comments_(token, story-public-id, comment-public-id) do
    ApiHelpers.make_request(
      :delete,
      "/api/v3/stories/#{story-public-id}/comments/#{comment-public-id}", 
      token
    )
  end


  @doc """
  Get Comment is used to get Comment information.
  """
  def get_api_v3_stories__comments_(token, story-public-id, comment-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/stories/#{story-public-id}/comments/#{comment-public-id}", 
      token
    )
  end


  @doc """
  Update Comment replaces the text of the existing Comment.
  """
  def put_api_v3_stories__comments_(token, story-public-id, comment-public-id, UpdateStoryComment) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/stories/#{story-public-id}/comments/#{comment-public-id}", 
      token, json: UpdateStoryComment
    )
  end


  @doc """
  Search Iterations lets you search Iterations based on desired parameters. Since ordering of results can change over time (due to search ranking decay, new Iterations being created), the `next` value from the previous response can be used as the path and query string for the next page to ensure stable ordering.
  """
  def get_api_v3_search_iterations(token, query, page_size, detail, next, entity_types) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/search/iterations", 
      token, params: query, params: page_size, params: detail, params: next, params: entity_types
    )
  end


  @doc """
  Search Stories lets you search Stories based on desired parameters. Since ordering of stories can change over time (due to search ranking decay, new stories being created), the `next` value from the previous response can be used as the path and query string for the next page to ensure stable ordering.
  """
  def get_api_v3_search_stories(token, query, page_size, detail, next, entity_types) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/search/stories", 
      token, params: query, params: page_size, params: detail, params: next, params: entity_types
    )
  end


  @doc """
  List the Stories assigned to the Group. (By default, limited to 1,000).
  """
  def get_api_v3_groups__stories(token, group-public-id, limit, offset) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/groups/#{group-public-id}/stories", 
      token, params: limit, params: offset
    )
  end


  @doc """
  List Stories returns a list of all Stories in a selected Project and their attributes.
  """
  def get_api_v3_projects__stories(token, project-public-id, includes_description) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/projects/#{project-public-id}/stories", 
      token, params: includes_description
    )
  end


  @doc """
  Get Stories which have a given External Link associated with them.
  """
  def get_api_v3_external-link_stories(token, external_link) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/external-link/stories", 
      token, params: external_link
    )
  end


  @doc """
  Story Links (called Story Relationships in the UI) allow you create semantic relationships between two stories. The parameters read like an active voice grammatical sentence:  subject -> verb -> object.

The subject story acts on the object Story; the object story is the direct object of the sentence.

The subject story "blocks", "duplicates", or "relates to" the object story.  Examples:
- "story 5 blocks story 6” -- story 6 is now "blocked" until story 5 is moved to a Done workflow state.
- "story 2 duplicates story 1” -- Story 2 represents the same body of work as Story 1 (and should probably be archived).
- "story 7 relates to story 3”
  """
  def post_api_v3_story-links(token, CreateStoryLink) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/story-links", 
      token, json: CreateStoryLink
    )
  end


  @doc """
  Create Story is used to add a new story to your Shortcut Workspace.
    This endpoint requires that either **workflow_state_id** or **project_id** be provided, but will reject the request if both or neither are specified. The workflow_state_id has been marked as required and is the recommended field to specify because we are in the process of sunsetting Projects in Shortcut.
  """
  def post_api_v3_stories(token, CreateStoryParams) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/stories", 
      token, json: CreateStoryParams
    )
  end


  @doc """
  Returns information about members of the Workspace.
  """
  def get_api_v3_members(token, org-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/members", 
      token, params: org-public-id
    )
  end


  @doc """
  Delete File deletes a previously uploaded file.
  """
  def delete_api_v3_files_(token, file-public-id) do
    ApiHelpers.make_request(
      :delete,
      "/api/v3/files/#{file-public-id}", 
      token
    )
  end


  @doc """
  Get File returns information about the selected UploadedFile.
  """
  def get_api_v3_files_(token, file-public-id) do
    ApiHelpers.make_request(
      :get,
      "/api/v3/files/#{file-public-id}", 
      token
    )
  end


  @doc """
  Update File updates the properties of an UploadedFile (but not its content).
  """
  def put_api_v3_files_(token, file-public-id, UpdateFile) do
    ApiHelpers.make_request(
      :put,
      "/api/v3/files/#{file-public-id}", 
      token, json: UpdateFile
    )
  end


  @doc """
  Search Stories lets you search Stories based on desired parameters.
  """
  def post_api_v3_stories_search(token, SearchStories) do
    ApiHelpers.make_request(
      :post,
      "/api/v3/stories/search", 
      token, json: SearchStories
    )
  end

end
