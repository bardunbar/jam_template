# The Jam Template

**Here is a simple template for getting up and running with Godot quickly**

### Itch.io Integration

Set up the following [secrets in your repository](https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions)
1. `BUTLER_API_KEY` - Go to your [itch.io settings](https://itch.io/user/settings) and generate a new API key.
1. `ITCHIO_USERNAME` - Your username on itch.io. This can be found in the url [**USERNAME**].itch.io/[game name]
1. `ITCHIO_GAME` - The name of your game on itch.io. This is can be found in the url [username].itch.io/[**GAME NAME**]

Optionally you can add any of the following as variables in your respository to customize the deployment
1. `DEPLOY_HTML5` - `true` / `false` - defaults to `true` - Deploy HTML5 builds to itch
1. `DEPLOY_WINDOWS` - `true` / `false` - defaults to `true` - Deploy Windows builds to itch
1. `DEPLOY_MACOS` - `true` / `false` - defaults to `true` - Deploy MacOS builds to itch
1. `DEPLOY_LINUX` - `true` / `false` - defaults to `true` - Deploy Linux builds to itch