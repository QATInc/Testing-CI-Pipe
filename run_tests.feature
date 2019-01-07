### run_tests.feature

Given my jenkins-config lists "stages"
    And my jenkins-config lists "tags"
When I run my pipeline
Then I'll receive correct output

Given manual test with @pass tag is committed
When the pipeline runs
Then that test will pass

Given manual test with @fail tag is committed
When the pipeline runs
Then that test will fail

Given stage "A" contains a failing test
When the pipeline runs
Then stage "B" will not run

Given tag "A" contains a failing test
When the pipeline runs
Then stage "B" will not run

check that todo (invalid) tags don't run 
Given a test is tagged with the invalid tag
When the pipeline runs
Then the test will not run

Given jenkins-config contains [tags]
When the pipeline runs
Then only tests with these tags will run

Given "language" is specified
When the pipeline runs
Then only tests in that language will run
