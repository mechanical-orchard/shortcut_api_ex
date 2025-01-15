defmodule Generated.ApiClientBehavior do
  @moduledoc """
  Behavior specification for the generated API client
  """

  @type token :: String.t()

  @callback get_api_v3_stories__history(token :: token(), story_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback delete_api_v3_epics__comments_(token :: token(), epic_public_id :: integer(), comment_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_epics__comments_(token :: token(), epic_public_id :: integer(), comment_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_epics__comments_(token :: token(), epic_public_id :: integer(), comment_public_id :: integer(), CreateCommentComment :: any()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_epics__comments_(token :: token(), epic_public_id :: integer(), comment_public_id :: integer(), UpdateComment :: any()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_stories__comments__unlink-from-slack(token :: token(), story_public_id :: integer(), comment_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_search(token :: token(), query :: String.t(), page_size :: integer(), detail :: String.t(), next :: String.t(), entity_types :: list()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_objectives__epics(token :: token(), objective_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_members_(token :: token(), member_public_id :: String.t(), org_public_id :: String.t()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_groups(token :: token()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_groups(token :: token(), CreateGroup :: any()) ::
  {:ok, map()} | {:error, any()}


@callback delete_api_v3_epics_(token :: token(), epic_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_epics_(token :: token(), epic_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_epics_(token :: token(), epic_public_id :: integer(), UpdateEpic :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_objectives(token :: token()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_objectives(token :: token(), CreateObjective :: any()) ::
  {:ok, map()} | {:error, any()}


@callback delete_api_v3_milestones_(token :: token(), milestone_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_milestones_(token :: token(), milestone_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_milestones_(token :: token(), milestone_public_id :: integer(), UpdateMilestone :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_repositories_(token :: token(), repo_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback delete_api_v3_entity-templates_(token :: token(), entity_template_public_id :: String.t()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_entity-templates_(token :: token(), entity_template_public_id :: String.t()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_entity-templates_(token :: token(), entity_template_public_id :: String.t(), UpdateEntityTemplate :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_entity-templates(token :: token()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_entity-templates(token :: token(), CreateEntityTemplate :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_search_objectives(token :: token(), query :: String.t(), page_size :: integer(), detail :: String.t(), next :: String.t(), entity_types :: list()) ::
  {:ok, map()} | {:error, any()}


@callback delete_api_v3_stories__comments__reactions(token :: token(), story_public_id :: integer(), comment_public_id :: integer(), CreateOrDeleteStoryReaction :: any()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_stories__comments__reactions(token :: token(), story_public_id :: integer(), comment_public_id :: integer(), CreateOrDeleteStoryReaction :: any()) ::
  {:ok, map()} | {:error, any()}


@callback delete_api_v3_labels_(token :: token(), label_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_labels_(token :: token(), label_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_labels_(token :: token(), label_public_id :: integer(), UpdateLabel :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_projects(token :: token()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_projects(token :: token(), CreateProject :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_iterations__stories(token :: token(), iteration_public_id :: integer(), includes_description :: boolean()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_iterations_enable(token :: token()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_epics__comments(token :: token(), epic_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_epics__comments(token :: token(), epic_public_id :: integer(), CreateEpicComment :: any()) ::
  {:ok, map()} | {:error, any()}


@callback delete_api_v3_custom-fields_(token :: token(), custom_field_public_id :: String.t()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_custom-fields_(token :: token(), custom_field_public_id :: String.t()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_custom-fields_(token :: token(), custom_field_public_id :: String.t(), UpdateCustomField :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_iterations(token :: token()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_iterations(token :: token(), CreateIteration :: any()) ::
  {:ok, map()} | {:error, any()}


@callback delete_api_v3_stories_bulk(token :: token(), DeleteStories :: any()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_stories_bulk(token :: token(), CreateStories :: any()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_stories_bulk(token :: token(), UpdateStories :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_files(token :: token()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_files(token :: token(), story_id :: integer(), file0 :: any(), file1 :: any(), file2 :: any(), file3 :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_epic-workflow(token :: token()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_iterations_disable(token :: token()) ::
  {:ok, map()} | {:error, any()}


@callback delete_api_v3_categories_(token :: token(), category_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_categories_(token :: token(), category_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_categories_(token :: token(), category_public_id :: integer(), UpdateCategory :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_custom-fields(token :: token()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_labels__epics(token :: token(), label_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback delete_api_v3_objectives_(token :: token(), objective_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_objectives_(token :: token(), objective_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_objectives_(token :: token(), objective_public_id :: integer(), UpdateObjective :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_stories__comments(token :: token(), story_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_stories__comments(token :: token(), story_public_id :: integer(), CreateStoryComment :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_epics__stories(token :: token(), epic_public_id :: integer(), includes_description :: boolean()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_key-results_(token :: token(), key_result_public_id :: String.t()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_key-results_(token :: token(), key_result_public_id :: String.t(), UpdateKeyResult :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_labels(token :: token(), slim :: boolean()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_labels(token :: token(), CreateLabelParams :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_labels__stories(token :: token(), label_public_id :: integer(), includes_description :: boolean()) ::
  {:ok, map()} | {:error, any()}


@callback delete_api_v3_iterations_(token :: token(), iteration_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_iterations_(token :: token(), iteration_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_iterations_(token :: token(), iteration_public_id :: integer(), UpdateIteration :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_epics(token :: token(), includes_description :: boolean()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_epics(token :: token(), CreateEpic :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_categories__objectives(token :: token(), category_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_categories__milestones(token :: token(), category_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_member(token :: token()) ::
  {:ok, map()} | {:error, any()}


@callback delete_api_v3_story-links_(token :: token(), story_link_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_story-links_(token :: token(), story_link_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_story-links_(token :: token(), story_link_public_id :: integer(), UpdateStoryLink :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_search_epics(token :: token(), query :: String.t(), page_size :: integer(), detail :: String.t(), next :: String.t(), entity_types :: list()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_epics__unlink-productboard(token :: token(), epic_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_categories(token :: token()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_categories(token :: token(), CreateCategory :: any()) ::
  {:ok, map()} | {:error, any()}


@callback delete_api_v3_stories_(token :: token(), story_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_stories_(token :: token(), story_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_stories_(token :: token(), story_public_id :: integer(), UpdateStory :: any()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_entity-templates_enable(token :: token()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_groups_(token :: token(), group_public_id :: String.t()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_groups_(token :: token(), group_public_id :: String.t(), UpdateGroup :: any()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_stories__tasks(token :: token(), story_public_id :: integer(), CreateTask :: any()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_stories_from-template(token :: token(), CreateStoryFromTemplateParams :: any()) ::
  {:ok, map()} | {:error, any()}


@callback delete_api_v3_linked-files_(token :: token(), linked_file_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_linked-files_(token :: token(), linked_file_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_linked-files_(token :: token(), linked_file_public_id :: integer(), UpdateLinkedFile :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_search_milestones(token :: token(), query :: String.t(), page_size :: integer(), detail :: String.t(), next :: String.t(), entity_types :: list()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_workflows(token :: token()) ::
  {:ok, map()} | {:error, any()}


@callback delete_api_v3_stories__tasks_(token :: token(), story_public_id :: integer(), task_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_stories__tasks_(token :: token(), story_public_id :: integer(), task_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_stories__tasks_(token :: token(), story_public_id :: integer(), task_public_id :: integer(), UpdateTask :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_milestones(token :: token()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_milestones(token :: token(), CreateMilestone :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_repositories(token :: token()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_entity-templates_disable(token :: token()) ::
  {:ok, map()} | {:error, any()}


@callback delete_api_v3_projects_(token :: token(), project_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_projects_(token :: token(), project_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_projects_(token :: token(), project_public_id :: integer(), UpdateProject :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_linked-files(token :: token()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_linked-files(token :: token(), CreateLinkedFile :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_workflows_(token :: token(), workflow_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_milestones__epics(token :: token(), milestone_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback delete_api_v3_stories__comments_(token :: token(), story_public_id :: integer(), comment_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_stories__comments_(token :: token(), story_public_id :: integer(), comment_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_stories__comments_(token :: token(), story_public_id :: integer(), comment_public_id :: integer(), UpdateStoryComment :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_search_iterations(token :: token(), query :: String.t(), page_size :: integer(), detail :: String.t(), next :: String.t(), entity_types :: list()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_search_stories(token :: token(), query :: String.t(), page_size :: integer(), detail :: String.t(), next :: String.t(), entity_types :: list()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_groups__stories(token :: token(), group_public_id :: String.t(), limit :: integer(), offset :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_projects__stories(token :: token(), project_public_id :: integer(), includes_description :: boolean()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_external-link_stories(token :: token(), external_link :: String.t()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_story-links(token :: token(), CreateStoryLink :: any()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_stories(token :: token(), CreateStoryParams :: any()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_members(token :: token(), org_public_id :: String.t()) ::
  {:ok, map()} | {:error, any()}


@callback delete_api_v3_files_(token :: token(), file_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback get_api_v3_files_(token :: token(), file_public_id :: integer()) ::
  {:ok, map()} | {:error, any()}


@callback put_api_v3_files_(token :: token(), file_public_id :: integer(), UpdateFile :: any()) ::
  {:ok, map()} | {:error, any()}


@callback post_api_v3_stories_search(token :: token(), SearchStories :: any()) ::
  {:ok, map()} | {:error, any()}

end
