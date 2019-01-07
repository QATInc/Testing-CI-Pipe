### infrastructure.feature

Given there are no agents online matching "label"
When I run my pipeline
Then the pipeline should fail

Scenario: Jenkins is running and can be accessed
Given Jenkins is running
When I ping Jenkins
Then Jenkins will be online

(future state)
Given there are no agents online matching "label"
When I run my pipeline
Then agents matching "label" should be provisioned

(future state)
Given I have some agents online
When I don't run my pipeline for some time
Then agents should be deprovisioned
