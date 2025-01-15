defmodule Generated.Models.StorySearchResult do
  @moduledoc """
  A Story in search results. This is typed differently from Story because the details=slim search argument will omit some fields.
  """

  @type t :: %__MODULE__{
    requested_by_id: String.t(),
        group_mention_ids: list(String.t()),
        created_at: String.t(),
        entity_type: String.t(),
        started_at: String.t(),
        archived: boolean(),
        custom_fields: list(Generated.Models.StoryCustomField.t()),
        lead_time: integer(),
        num_tasks_completed: integer(),
        mention_ids: list(String.t()),
        completed_at: String.t(),
        deadline: String.t(),
        files: list(Generated.Models.UploadedFile.t()),
        commits: list(Generated.Models.Commit.t()),
        project_id: integer(),
        external_links: list(String.t()),
        task_ids: list(integer()),
        linked_file_ids: list(integer()),
        workflow_state_id: integer(),
        labels: list(Generated.Models.LabelSlim.t()),
        external_id: String.t(),
        owner_ids: list(String.t()),
        label_ids: list(integer()),
        estimate: integer(),
        comments: list(Generated.Models.StoryComment.t()),
        blocked: boolean(),
        story_links: list(Generated.Models.TypedStoryLink.t()),
        iteration_id: integer(),
        story_template_id: String.t(),
        started_at_override: String.t(),
        story_type: String.t(),
        id: integer(),
        name: String.t(),
        description: String.t(),
        moved_at: String.t(),
        updated_at: String.t(),
        epic_id: integer(),
        pull_requests: list(Generated.Models.PullRequest.t()),
        file_ids: list(integer()),
        tasks: list(Generated.Models.Task.t()),
        linked_files: list(Generated.Models.LinkedFile.t()),
        synced_item: Generated.Models.SyncedItem.t(),
        blocker: boolean(),
        workflow_id: integer(),
        member_mention_ids: list(String.t()),
        previous_iteration_ids: list(integer()),
        position: integer(),
        completed_at_override: String.t(),
        completed: boolean(),
        global_id: String.t(),
        follower_ids: list(String.t()),
        started: boolean(),
        unresolved_blocker_comments: list(integer()),
        group_id: String.t(),
        branches: list(Generated.Models.Branch.t()),
        comment_ids: list(integer()),
        stats: Generated.Models.StoryStats.t(),
        app_url: String.t(),
        cycle_time: integer()
  }

  defstruct [:requested_by_id, :group_mention_ids, :created_at, :entity_type, :started_at, :archived, :custom_fields, :lead_time, :num_tasks_completed, :mention_ids, :completed_at, :deadline, :files, :commits, :project_id, :external_links, :task_ids, :linked_file_ids, :workflow_state_id, :labels, :external_id, :owner_ids, :label_ids, :estimate, :comments, :blocked, :story_links, :iteration_id, :story_template_id, :started_at_override, :story_type, :id, :name, :description, :moved_at, :updated_at, :epic_id, :pull_requests, :file_ids, :tasks, :linked_files, :synced_item, :blocker, :workflow_id, :member_mention_ids, :previous_iteration_ids, :position, :completed_at_override, :completed, :global_id, :follower_ids, :started, :unresolved_blocker_comments, :group_id, :branches, :comment_ids, :stats, :app_url, :cycle_time]

  @doc """
The ID of the Member that requested the story.
"""
def requested_by_id(%__MODULE__{requested_by_id: value}), do: value


@doc """
An array of Group IDs that have been mentioned in the Story description.
"""
def group_mention_ids(%__MODULE__{group_mention_ids: value}), do: value


@doc """
The time/date the Story was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The time/date the Story was started.
"""
def started_at(%__MODULE__{started_at: value}), do: value


@doc """
True if the story has been archived or not.
"""
def archived(%__MODULE__{archived: value}), do: value


@doc """
An array of CustomField value assertions for the story.
"""
def custom_fields(%__MODULE__{custom_fields: value}), do: value


@doc """
The lead time (in seconds) of this story when complete.
"""
def lead_time(%__MODULE__{lead_time: value}), do: value


@doc """
The number of tasks on the story which are complete.
"""
def num_tasks_completed(%__MODULE__{num_tasks_completed: value}), do: value


@doc """
`Deprecated:` use `member_mention_ids`.
"""
def mention_ids(%__MODULE__{mention_ids: value}), do: value


@doc """
The time/date the Story was completed.
"""
def completed_at(%__MODULE__{completed_at: value}), do: value


@doc """
The due date of the story.
"""
def deadline(%__MODULE__{deadline: value}), do: value


@doc """
An array of files attached to the story.
"""
def files(%__MODULE__{files: value}), do: value


@doc """
An array of commits attached to the story.
"""
def commits(%__MODULE__{commits: value}), do: value


@doc """
The ID of the project the story belongs to.
"""
def project_id(%__MODULE__{project_id: value}), do: value


@doc """
An array of external links (strings) associated with a Story
"""
def external_links(%__MODULE__{external_links: value}), do: value


@doc """
An array of IDs of Tasks attached to the story.
"""
def task_ids(%__MODULE__{task_ids: value}), do: value


@doc """
An array of IDs of LinkedFiles attached to the story.
"""
def linked_file_ids(%__MODULE__{linked_file_ids: value}), do: value


@doc """
The ID of the workflow state the story is currently in.
"""
def workflow_state_id(%__MODULE__{workflow_state_id: value}), do: value


@doc """
An array of labels attached to the story.
"""
def labels(%__MODULE__{labels: value}), do: value


@doc """
This field can be set to another unique ID. In the case that the Story has been imported from another tool, the ID in the other tool can be indicated here.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
An array of UUIDs of the owners of this story.
"""
def owner_ids(%__MODULE__{owner_ids: value}), do: value


@doc """
An array of label ids attached to the story.
"""
def label_ids(%__MODULE__{label_ids: value}), do: value


@doc """
The numeric point estimate of the story. Can also be null, which means unestimated.
"""
def estimate(%__MODULE__{estimate: value}), do: value


@doc """
An array of comments attached to the story.
"""
def comments(%__MODULE__{comments: value}), do: value


@doc """
A true/false boolean indicating if the Story is currently blocked.
"""
def blocked(%__MODULE__{blocked: value}), do: value


@doc """
An array of story links attached to the Story.
"""
def story_links(%__MODULE__{story_links: value}), do: value


@doc """
The ID of the iteration the story belongs to.
"""
def iteration_id(%__MODULE__{iteration_id: value}), do: value


@doc """
The ID of the story template used to create this story, or null if not created using a template.
"""
def story_template_id(%__MODULE__{story_template_id: value}), do: value


@doc """
A manual override for the time/date the Story was started.
"""
def started_at_override(%__MODULE__{started_at_override: value}), do: value


@doc """
The type of story (feature, bug, chore).
"""
def story_type(%__MODULE__{story_type: value}), do: value


@doc """
The unique ID of the Story.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The name of the story.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The description of the story.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
The time/date the Story was last changed workflow-state.
"""
def moved_at(%__MODULE__{moved_at: value}), do: value


@doc """
The time/date the Story was updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value


@doc """
The ID of the epic the story belongs to.
"""
def epic_id(%__MODULE__{epic_id: value}), do: value


@doc """
An array of Pull/Merge Requests attached to the story.
"""
def pull_requests(%__MODULE__{pull_requests: value}), do: value


@doc """
An array of IDs of Files attached to the story.
"""
def file_ids(%__MODULE__{file_ids: value}), do: value


@doc """
An array of tasks connected to the story.
"""
def tasks(%__MODULE__{tasks: value}), do: value


@doc """
An array of linked files attached to the story.
"""
def linked_files(%__MODULE__{linked_files: value}), do: value


@doc """
Field synced_item
"""
def synced_item(%__MODULE__{synced_item: value}), do: value


@doc """
A true/false boolean indicating if the Story is currently a blocker of another story.
"""
def blocker(%__MODULE__{blocker: value}), do: value


@doc """
The ID of the workflow the story belongs to.
"""
def workflow_id(%__MODULE__{workflow_id: value}), do: value


@doc """
An array of Member IDs that have been mentioned in the Story description.
"""
def member_mention_ids(%__MODULE__{member_mention_ids: value}), do: value


@doc """
The IDs of the iteration the story belongs to.
"""
def previous_iteration_ids(%__MODULE__{previous_iteration_ids: value}), do: value


@doc """
A number representing the position of the story in relation to every other story in the current project.
"""
def position(%__MODULE__{position: value}), do: value


@doc """
A manual override for the time/date the Story was completed.
"""
def completed_at_override(%__MODULE__{completed_at_override: value}), do: value


@doc """
A true/false boolean indicating if the Story has been completed.
"""
def completed(%__MODULE__{completed: value}), do: value


@doc """
Field global_id
"""
def global_id(%__MODULE__{global_id: value}), do: value


@doc """
An array of UUIDs for any Members listed as Followers.
"""
def follower_ids(%__MODULE__{follower_ids: value}), do: value


@doc """
A true/false boolean indicating if the Story has been started.
"""
def started(%__MODULE__{started: value}), do: value


@doc """
The IDs of any unresolved blocker comments on the Story.
"""
def unresolved_blocker_comments(%__MODULE__{unresolved_blocker_comments: value}), do: value


@doc """
The ID of the group associated with the story.
"""
def group_id(%__MODULE__{group_id: value}), do: value


@doc """
An array of Git branches attached to the story.
"""
def branches(%__MODULE__{branches: value}), do: value


@doc """
An array of IDs of Comments attached to the story.
"""
def comment_ids(%__MODULE__{comment_ids: value}), do: value


@doc """
Field stats
"""
def stats(%__MODULE__{stats: value}), do: value


@doc """
The Shortcut application url for the Story.
"""
def app_url(%__MODULE__{app_url: value}), do: value


@doc """
The cycle time (in seconds) of this story when complete.
"""
def cycle_time(%__MODULE__{cycle_time: value}), do: value

end
