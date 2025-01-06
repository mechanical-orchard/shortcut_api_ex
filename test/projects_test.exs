defmodule ShortcutApi.ProjectsTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    base_url = "http://localhost:#{bypass.port}/api/v3"
    Application.put_env(:shortcut_api, :base_url, base_url)
    {:ok, bypass: bypass}
  end

  setup_all do
    Hammox.protect(ShortcutApi.Projects, ShortcutApi.ProjectsBehavior)
  end

  test "list_projects/1", %{bypass: bypass, list_projects_1: list_projects} do
    Bypass.expect(bypass, "GET", "/api/v3/projects", fn conn ->
      conn
      |> Plug.Conn.put_resp_content_type("application/json")
      |> Plug.Conn.resp(
        200,
        Jason.encode!([
          %{id: 123, name: "Project 1"},
          %{id: 456, name: "Project 2"}
        ])
      )
    end)

    {:ok, projects} = list_projects.("fake-token")
    assert length(projects) == 2
    assert Enum.at(projects, 0)["name"] == "Project 1"
    assert Enum.at(projects, 1)["name"] == "Project 2"
  end

  test "get_project/2", %{bypass: bypass, get_project_2: get_project} do
    project_id = 123

    Bypass.expect(bypass, "GET", "/api/v3/projects/#{project_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_content_type("application/json")
      |> Plug.Conn.resp(
        200,
        Jason.encode!(%{id: project_id, name: "Test Project"})
      )
    end)

    {:ok, project} = get_project.("fake-token", project_id)
    assert project["id"] == project_id
    assert project["name"] == "Test Project"
  end

  test "create_project/2", %{bypass: bypass, create_project_2: create_project} do
    project_params = %{"name" => "New Project"}

    Bypass.expect(bypass, "POST", "/api/v3/projects", fn conn ->
      {:ok, body, conn} = Plug.Conn.read_body(conn)
      assert Jason.decode!(body) == project_params

      response = Map.put(project_params, "id", 456)

      conn
      |> Plug.Conn.put_resp_content_type("application/json")
      |> Plug.Conn.resp(201, Jason.encode!(response))
    end)

    {:ok, project} = create_project.("fake-token", project_params)
    assert project["name"] == "New Project"
    assert project["id"] == 456
  end

  test "update_project/3", %{bypass: bypass, update_project_3: update_project} do
    project_id = 123
    update_params = %{"name" => "Updated Project"}

    Bypass.expect(bypass, "PUT", "/api/v3/projects/#{project_id}", fn conn ->
      {:ok, body, conn} = Plug.Conn.read_body(conn)
      assert Jason.decode!(body) == update_params

      conn
      |> Plug.Conn.put_resp_content_type("application/json")
      |> Plug.Conn.resp(
        200,
        Jason.encode!(%{id: project_id} |> Map.merge(update_params))
      )
    end)

    {:ok, project} = update_project.("fake-token", project_id, update_params)
    assert project["id"] == project_id
    assert project["name"] == "Updated Project"
  end

  test "delete_project/2", %{bypass: bypass, delete_project_2: delete_project} do
    project_id = 123

    Bypass.expect(bypass, "DELETE", "/api/v3/projects/#{project_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_content_type("application/json")
      |> Plug.Conn.resp(200, Jason.encode!(%{}))
    end)

    assert {:ok, %{}} = delete_project.("fake-token", project_id)
  end
end
