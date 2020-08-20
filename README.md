# Task!

1. Make tests pass, such that you can see the following output
   ```
   $ rspec .
   ....
   $ echo $?
   0
   ```

2. Create a Concourse pipeline to run RSpec (`pipeline.yml`)
   ```
   $ fly -t pks-releng-dev set-pipeline --config pipeline.yml --pipeline rspec-$USER
   ```

3. Try to commit bad code / failing test and see it fail on Concourse


## Hints
- You'd need `git resource` in Concourse
- You need to commit and push your code so that Concourse can clone from a git repository
- Reference (this project should be simpler than the example): https://concourse-ci.org/rails-example.html
- Would be much easier to just commit this in a public GitHub repository
