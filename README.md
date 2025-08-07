# CI Agents
Repo to publish docker images to be used in CI as aux images for testing or build.

### How to 
- Add a folder with `docker` file.
- Add corresponding [build.gradle.kts](./sbt-agent/build.gradle.kts)
- Add folder name to [settings.gradle.kts](./settings.gradle.kts).
- Once merged to main branch images will be pushed to docker repo by [CI](./.github/workflows/ci.yml).

