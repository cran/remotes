# github_error

    Code
      conditionMessage(err)
    Output
      [1] "HTTP error 304.\n  foobar\n\n  Rate limit remaining: 0/5000\n  Rate limit reset at: 2018-10-19 15:16:18 UTC\n\n  To increase your GitHub API rate limit\n  - Use `usethis::create_github_token()` to create a Personal Access Token.\n  - Use `gitcreds::gitcreds_set()` to add the token."

---

    Code
      conditionMessage(err)
    Output
      [1] "HTTP error 304.\n  foobar\n\n  Rate limit remaining: 0/5000\n  Rate limit reset at: 2018-10-19 15:16:18 UTC\n\n  To increase your GitHub API rate limit\n  - Use `usethis::create_github_token()` to create a Personal Access Token.\n  - Add `GITHUB_PAT` to your travis settings as an encrypted variable."

