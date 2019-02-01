workflow "Release notes" {
  resolves = ["Issues to Blog"]
  on = "issues"
}

action "Issues to Blog" {
  uses = "jcansdale/haacked.com/github-actions/dotnetcore-cli@master"
  args = "$GITHUB_TOKEN push"
  secrets = ["GITHUB_TOKEN"]
}
