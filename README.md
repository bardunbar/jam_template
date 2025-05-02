# The Jam Template

**Here is a simple template for getting up and running with Godot quickly**

This is a simple Godot project that contains three basic screens; a main menu, an empty game scene, and a pause menu overlay. However the primary goal of this template is to accelerate the process of building and deploying the game to [itch.io](https://itch.io/).

## GitHub Actions

This project is set up with a GitHub action that automatically builds and deploys to Web, Windows, MacOS, and Linux.
The platforms exported automatically are determined by the export configuration. If you don't want to build a particular platform either remove or rename the configuration.
Right now the export configuration names are hardcoded to the following:
- HTML5
- Windows
- macOS
- LinuxX11

> [!NOTE]
> Any configuration with a name that does not match the above will still be built by the github action but will not be uploaded to itch.io

In order to trigger the action you must push a tag of the format `v[0-9]+.[0-9]+.[0-9]+`. For example: v1.0.0 or v0.21.9, etc. You can also manually trigger the action on the workflow page.

### Itch.io Integration

Set up the following [secrets in your repository](https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions)
1. `BUTLER_API_KEY` - Go to your [itch.io settings](https://itch.io/user/settings) and generate a new API key.
1. `ITCHIO_USERNAME` - Your username on itch.io. This can be found in the url [**USERNAME**].itch.io/[game name]
1. `ITCHIO_GAME` - The name of your game on itch.io. This is can be found in the url [username].itch.io/[**GAME NAME**]
