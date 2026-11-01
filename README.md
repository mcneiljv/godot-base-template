# Godot Base Template

A reusable starting point for new Godot projects.

## Requirements

- Godot 4.4 or newer (uses `.uid` files)

## What's Included

- Player movement with walk and sprint
- Sprite animation that plays while moving and stops when idle
- Full-screen ColorRect background (under a `CanvasLayer`)

## Input Map

These actions need to exist in **Project > Project Settings > Input Map**:

| Action       | Purpose           |
|--------------|-------------------|
| `move_left`  | Move left         |
| `move_right` | Move right        |
| `move_up`    | Move up           |
| `move_down`  | Move down         |
| `sprint`     | Hold to run faster |

## Tunable Settings

Set in the Inspector on the player node:

- `walk_speed` (default 400)
- `sprint_speed` (default 800)

## Starting a New Project

1. Click **Use this template** on GitHub and create a new repo.
2. Clone it and open the folder in Godot.
3. Rename the project in Project Settings.
4. Replace the placeholder sprite and background.
