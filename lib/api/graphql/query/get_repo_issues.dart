const String getRepoIssues = r'''query get_repo_issues($repoName: String!){
  viewer {
    __typename
    repository(name: $repoName) {
      __typename
      issues(first: 100, orderBy: {field: UPDATED_AT, direction: DESC}) {
        __typename
        totalCount
        nodes {
          __typename
          id
          bodyText
          closed
          title
          updatedAt
          assignees(first: 1) {
            __typename
            nodes {
              __typename
              avatarUrl(size: 48)
              login
            }
          }
          author {
            __typename
            login
            avatarUrl(size: 48)
          }
        }
        edges {
          __typename
          cursor
        }
      }
    }
  }
}
''';
