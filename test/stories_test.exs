defmodule ShortcutApi.StoriesTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    # Override the base URL for testing
    base_url = "http://localhost:#{bypass.port}/api/v3"
    Application.put_env(:shortcut_api, :base_url, base_url)
    {:ok, bypass: bypass}
  end

  test "get_story/2", %{bypass: bypass} do
    story_id = 123

    Bypass.expect(bypass, "GET", "/api/v3/stories/#{story_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_content_type("application/json")
      |> Plug.Conn.resp(
        200,
        Jason.encode!(%{id: story_id, name: "Test Story", project_id: 456})
      )
    end)

    {:ok, story} = ShortcutApi.Stories.get_story("fake-token", story_id)
    assert story["id"] == story_id
    assert story["name"] == "Test Story"
  end

  test "create_story/2", %{bypass: bypass} do
    # Change to use string keys
    story_params = %{"name" => "New Story", "project_id" => 789}

    Bypass.expect(bypass, "POST", "/api/v3/stories", fn conn ->
      {:ok, body, conn} = Plug.Conn.read_body(conn)
      assert Jason.decode!(body) == story_params

      response = Map.put(story_params, "id", 456)

      conn
      |> Plug.Conn.put_resp_content_type("application/json")
      |> Plug.Conn.resp(201, Jason.encode!(response))
    end)

    {:ok, story} = ShortcutApi.Stories.create_story("fake-token", story_params)
    assert story["name"] == "New Story"
    assert story["project_id"] == 789
  end

  test "update_story/3", %{bypass: bypass} do
    story_id = 123
    update_params = %{"name" => "Updated Story"}

    Bypass.expect(bypass, "PUT", "/api/v3/stories/#{story_id}", fn conn ->
      {:ok, body, conn} = Plug.Conn.read_body(conn)
      assert Jason.decode!(body) == update_params

      conn
      |> Plug.Conn.put_resp_content_type("application/json")
      |> Plug.Conn.resp(
        200,
        Jason.encode!(%{id: story_id} |> Map.merge(update_params))
      )
    end)

    {:ok, story} = ShortcutApi.Stories.update_story("fake-token", story_id, update_params)
    assert story["id"] == story_id
    assert story["name"] == "Updated Story"
  end

  test "delete_story/2", %{bypass: bypass} do
    story_id = 123

    Bypass.expect(bypass, "DELETE", "/api/v3/stories/#{story_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_content_type("application/json")
      |> Plug.Conn.resp(200, Jason.encode!(%{}))
    end)

    assert {:ok, %{}} = ShortcutApi.Stories.delete_story("fake-token", story_id)
  end
end
