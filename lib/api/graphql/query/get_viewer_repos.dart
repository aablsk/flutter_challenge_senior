const String getViewerRepos = r'''query get_viewer_repos($first: Int = 100){
  viewer {
    __typename
    repositories(first: $first, orderBy: {field: UPDATED_AT, direction: DESC}) {
      __typename
      totalCount
      edges {
        __typename
        cursor
      }
      nodes {
        __typename
        name
        id
        description
        issues(first: 3, orderBy: {field: UPDATED_AT, direction: DESC}) {
          __typename
          totalCount
          nodes {
            __typename
            title
            closed
            id
            assignees(first: 1) {
              __typename
              nodes {
                __typename
                avatarUrl(size: 48)
                id
                login
              }
            }
          }
        }
      }
    }
  }
}''';
