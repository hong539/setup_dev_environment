# Gitlab CI/CD

## Guides/tips...etc

* Issue Study:
    * Java CI task in Gitlab CI:
        * 如何加速maven建置流程?
            * cache
                * [gitlab.com/gitlab-org/gitlab/-/blob/master/lib/gitlab/ci/templates/Maven.gitlab-ci.yml](https://gitlab.com/gitlab-org/gitlab/-/blob/master/lib/gitlab/ci/templates/Maven.gitlab-ci.yml)
                * [docs.gitlab.com/ci/migration/examples/jenkins-maven/#run-jobs-in-docker-containers](https://docs.gitlab.com/ci/migration/examples/jenkins-maven/#run-jobs-in-docker-containers)
            * Add Thread count
                * [maven.apache.org/ref/4.0.0-beta-3/maven-embedder/cli.html](https://maven.apache.org/ref/4.0.0-beta-3/maven-embedder/cli.html)
    * Bash定時任務腳本執行期間剛好與開發人員執行的CI任務產生資源競爭，造成彼此無法順利完成
        * 可能解決方式:
            * 暫時: 先錯過定時任務的執行時間，避免資源競爭
            * 比較好的方式:
                * 可在原本的.gitlab-ci.yml中加入定時任務的清理腳本
                * 也可以在定時任務的清理腳本中，加入webhook與gitlab API互動，確定哪些條件下，清理腳本必需執行
                * 或者棄用原本的Shell executor，改用docker executor，達成Clean build environment for every build的效果
* [GitLab](https://gitlab.com/)
* [Runner execution flow](https://docs.gitlab.com/runner/#runner-execution-flow)
* [docs.gitlab.com/17.9/ci/yaml/](https://docs.gitlab.com/17.9/ci/yaml/)
* [docs.gitlab.com/runner/executors/](https://docs.gitlab.com/runner/executors/)
    * [docs.gitlab.com/runner/executors/#selecting-the-executor](https://docs.gitlab.com/runner/executors/#selecting-the-executor)
* [Enable Docker commands in your CI/CD jobs](https://docs.gitlab.com/ee/ci/docker/using_docker_build.html#enable-docker-commands-in-your-cicd-jobs)
* [runner](https://docs.gitlab.com/runner/install/)    
* [Kubernetes executor](https://docs.gitlab.com/runner/executors/kubernetes.html)
* [Using GitLab CI/CD with a GitHub repository](https://docs.gitlab.com/ee/ci/ci_cd_for_external_repos/github_integration.html)
* [Tutorial: Scan a Docker container for vulnerabilities](https://docs.gitlab.com/ee/tutorials/container_scanning/)
* [Test with GitLab CI/CD and generate reports in merge requests](https://docs.gitlab.com/ee/ci/testing/)
* [Monitor GitLab Runner usage](https://docs.gitlab.com/runner/monitoring/)
* [Go tools and GitLab: How to do continuous integration like a boss](https://about.gitlab.com/blog/2017/11/27/go-tools-and-gitlab-how-to-do-continuous-integration-like-a-boss/)
* [Convert Jenkins configuration to GitLab CI/CD](https://docs.gitlab.com/ee/ci/migration/examples/jenkins-maven.html#convert-jenkins-configuration-to-gitlab-cicd)
* [How to use GitLab CI/CD for Vue.js](https://about.gitlab.com/blog/2017/09/12/vuejs-app-gitlab/)