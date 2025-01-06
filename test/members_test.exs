defmodule ShortcutApi.MembersTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    # Override the base URL for testing
    base_url = "http://localhost:#{bypass.port}/api/v3"
    Application.put_env(:shortcut_api, :base_url, base_url)
    {:ok, bypass: bypass}
  end

  setup_all do
    Hammox.protect(ShortcutApi.Members, ShortcutApi.MembersBehavior)
  end

  test "get_current_member/1", %{bypass: bypass, get_current_member_1: get_current_member} do
    Bypass.expect(bypass, "GET", "/api/v3/member", fn conn ->
      conn
      |> Plug.Conn.put_resp_content_type("application/json")
      |> Plug.Conn.resp(
        200,
        Jason.encode!(%{
          "id" => "12345678-9012-3456-7890-123456789012",
          "mention_name" => "testuser",
          "name" => "Test User",
          "workspace2" => %{
            "estimate_scale" => [0, 1, 2, 3],
            "url_slug" => "test-workspace"
          }
        })
      )
    end)

    {:ok, member} = get_current_member.("fake-token")
    assert member["id"] == "12345678-9012-3456-7890-123456789012"
    assert member["mention_name"] == "testuser"
    assert member["name"] == "Test User"
    assert member["workspace2"]["url_slug"] == "test-workspace"
    assert member["workspace2"]["estimate_scale"] == [0, 1, 2, 3]
  end
end
