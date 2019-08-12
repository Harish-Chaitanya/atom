### Cookbook Testing Guidelines

Each Sous Chefs cookbook is setup for both local testing and testing within automated test platforms. The atom cookbook utilizes Rspec, Cookstyle, Foodcritic, and Test Kitchen for cookbook testing. On a local workstation Test Kitchen will run via kitchen-vagrant against VirtualBox systems. Within Circle CI we utilize kitchen-dokken to test in Docker containers. 

Prior to submitting your change you should run all tests. Linting (Cookstyle/Foodcritic) and Unit (Rspec) tests can be run by running delivery local all or by running each command. Test kitchen tests can be run by running kitchen test. Test Kitchen tests may take quite some time to complete depending on the level of coverage and systems involved. You may want to run kitchen list and test against a sub-set of a total suites.

Any new functionality should include additional testing to protect against future regressions. Similarly, patches that fix a bug or regression should have a regression test. Simply put, this is a test that would fail without your patch but passes with it. The goal is to ensure this bug doesn’t regress in the future. Consider a regular expression that doesn’t match a certain pattern that it should, so you provide a patch and a test to ensure that the part of the code that uses this regular expression works as expected. Later another contributor may modify this regular expression in a way that breaks your use cases. The test you wrote will fail, signaling to them to research your ticket and use case and accounting for it.

In practical terms unit tests for new library modules are usually written using rspec. Integration tests are written using inspec.

If you need help writing tests, please ask on the Sous Chef channel of the Chef Community Slack.

### Local Testing Check List

- [ ] rspec
  *  Runs the rspec unit tests including the chefspec tests
- [ ] cookstyle -a
  *  Check and possibly change to match the cookstyle ruby style
- [ ] foodcritic .
  *  Check against the foodcritic rules
- [ ] test kitchen
  *  Integration tests using the resources. Please run the ubuntu-18.04 tests as the minimum acceptable level of testing.
  *  Windows 2016 instance

### Github Pull Request Testing Check List

- [ ] Circleci tests
  *  Dangerfile tests
  *  Test kitchen on ubuntu linux
  *  Unit tests using rspec
  *  Lint tests using foodcritic and cookstyle
