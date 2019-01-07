### config.feature
- check configuration
    - access to library

Given jenkinsfile with bad syntax checked in
When the pipeline runs
Then the pipeline will fail

Given jenkinsfile with good syntax checked in
When the pipeline runs
Then the pipeline will pass