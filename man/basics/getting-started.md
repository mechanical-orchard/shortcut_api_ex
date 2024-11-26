# Getting Started

This guide will help you get up and running with the `shortcut_api_ex` library.

## Prerequisites

Before you begin, make sure you have the following:

- Elixir installed (version 1.16 or later)
- A Shortcut API token (you can get one from the [Shortcut app settings](https://app.shortcut.com/mechanical-orchard/settings/account/api-tokens))

## Installation

Add `shortcut_api_ex` to your list of dependencies in `mix.exs`:

## Example

You can use the `ShortcutApiEx.Epics.list_epics/1` function to fetch a list of epics from the Shortcut API. Here's an example:

elixir
```
token = "your_shortcut_api_token"
{:ok, epics} = ShortcutApiEx.Epics.list_epics(token)
```