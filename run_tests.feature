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

workflow test - if a fails, b should not run 

check that todo (invalid) tags don't run 

Given tags in jenkins-config, verify that only those tags run

Given language X is specified, does it run that language?
