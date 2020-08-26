const String getRepoIssues = r'''query repo_issues($repoName: String!){
  viewer {
    repository(name: $repoName) {
      issues(first: 100, orderBy: {field: UPDATED_AT, direction: DESC}) {
        totalCount
        nodes {
          id
          bodyText
          assignees(first: 1) {
            nodes {
              avatarUrl(size: 48)
              login
            }
          }
          author {
            login
            avatarUrl(size: 48)
          }
          closed
          comments(last: 2) {
            nodes {
              author {
                login
                avatarUrl(size: 48)
              }
              bodyText
            }
            totalCount
          }
          title
          updatedAt
        }
        edges {
          cursor
        }
      }
    }
  }
}''';
