defmodule ShortcutApi.EpicsTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    # Override the base URL for testing
    base_url = "http://localhost:#{bypass.port}/api/v3"
    Application.put_env(:shortcut_api, :base_url, base_url)
    {:ok, bypass: bypass}
  end

  setup_all do
    Hammox.protect(ShortcutApi.Epics, ShortcutApi.EpicsBehavior)
  end

  test "get_epic/2", %{bypass: bypass, get_epic_2: get_epic} do
    epic_id = 123

    Bypass.expect(bypass, "GET", "/api/v3/epics/#{epic_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_content_type("application/json")
      |> Plug.Conn.resp(
        200,
        Jason.encode!(%{id: epic_id, name: "Test Epic", workflow_state_id: 456})
      )
    end)

    {:ok, epic} = get_epic.("fake-token", epic_id)
    assert epic["id"] == epic_id
    assert epic["name"] == "Test Epic"
  end

  test "create_epic/2", %{bypass: bypass, create_epic_2: create_epic} do
    epic_params = %{"name" => "New Epic", "workflow_state_id" => 789}

    Bypass.expect(bypass, "POST", "/api/v3/epics", fn conn ->
      {:ok, body, conn} = Plug.Conn.read_body(conn)
      assert Jason.decode!(body) == epic_params

      response = Map.put(epic_params, "id", 456)

      conn
      |> Plug.Conn.put_resp_content_type("application/json")
      |> Plug.Conn.resp(201, Jason.encode!(response))
    end)

    {:ok, epic} = create_epic.("fake-token", epic_params)
    assert epic["name"] == "New Epic"
    assert epic["workflow_state_id"] == 789
  end

  test "update_epic/3", %{bypass: bypass, update_epic_3: update_epic} do
    epic_id = 123
    update_params = %{"name" => "Updated Epic"}

    Bypass.expect(bypass, "PUT", "/api/v3/epics/#{epic_id}", fn conn ->
      {:ok, body, conn} = Plug.Conn.read_body(conn)
      assert Jason.decode!(body) == update_params

      conn
      |> Plug.Conn.put_resp_content_type("application/json")
      |> Plug.Conn.resp(
        200,
        Jason.encode!(%{id: epic_id} |> Map.merge(update_params))
      )
    end)

    {:ok, epic} = update_epic.("fake-token", epic_id, update_params)
    assert epic["id"] == epic_id
    assert epic["name"] == "Updated Epic"
  end

  test "delete_epic/2", %{bypass: bypass, delete_epic_2: delete_epic} do
    epic_id = 123

    Bypass.expect(bypass, "DELETE", "/api/v3/epics/#{epic_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_content_type("application/json")
      |> Plug.Conn.resp(200, Jason.encode!(%{}))
    end)

    assert {:ok, %{}} = delete_epic.("fake-token", epic_id)
  end

  test "list_epics/1", %{bypass: bypass, list_epics_1: list_epics} do
    Bypass.expect(bypass, "GET", "/api/v3/epics", fn conn ->
      conn
      |> Plug.Conn.put_resp_content_type("application/json")
      |> Plug.Conn.resp(
        200,
        Jason.encode!([
          %{id: 123, name: "Epic 1"},
          %{id: 456, name: "Epic 2"}
        ])
      )
    end)

    {:ok, epics} = list_epics.("fake-token")
    assert length(epics) == 2
    assert Enum.at(epics, 0)["name"] == "Epic 1"
    assert Enum.at(epics, 1)["name"] == "Epic 2"
  end

  test "get_epic_workflow/1", %{bypass: bypass, get_epic_workflow_1: get_epic_workflow} do
    Bypass.expect(bypass, "GET", "/api/v3/epic-workflow", fn conn ->
      conn
      |> Plug.Conn.put_resp_content_type("application/json")
      |> Plug.Conn.resp(
        200,
        Jason.encode!(%{
          states: [
            %{id: 123, name: "To Do", type: "unstarted"},
            %{id: 456, name: "In Progress", type: "started"},
            %{id: 789, name: "Done", type: "done"}
          ]
        })
      )
    end)

    {:ok, workflow} = get_epic_workflow.("fake-token")
    assert length(workflow["states"]) == 3
    assert Enum.at(workflow["states"], 1)["name"] == "In Progress"
  end

  test "get_epic_stats/2", %{bypass: bypass, get_epic_stats_2: get_epic_stats} do
    epic_id = 123

    Bypass.expect(bypass, "GET", "/api/v3/epics/#{epic_id}/stats", fn conn ->
      conn
      |> Plug.Conn.put_resp_content_type("application/json")
      |> Plug.Conn.resp(
        200,
        Jason.encode!(%{
          num_points: 10,
          num_stories: 5,
          num_stories_unstarted: 2,
          num_stories_started: 2,
          num_stories_done: 1
        })
      )
    end)

    {:ok, stats} = get_epic_stats.("fake-token", epic_id)
    assert stats["num_points"] == 10
    assert stats["num_stories"] == 5
  end

  test "get_epic_state/2", %{bypass: bypass, get_epic_state_2: get_epic_state} do
    state_id = 123

    Bypass.expect(bypass, "GET", "/api/v3/epic-workflow/states/#{state_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_content_type("application/json")
      |> Plug.Conn.resp(
        200,
        Jason.encode!(%{
          id: state_id,
          name: "In Progress",
          type: "started",
          position: 2
        })
      )
    end)

    {:ok, state} = get_epic_state.("fake-token", state_id)
    assert state["id"] == state_id
    assert state["name"] == "In Progress"
    assert state["type"] == "started"
  end
end
