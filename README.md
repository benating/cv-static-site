# cv-static-site

This project uses [Gridsome](https://gridsome.org) with
[Vuetify](https://vuetifyjs.com) to build a static site for my cv.

## Hosting

The static site built is deployed to and hosted on s3 using Terraform
and can be accessed at <https://cv.bernardting.com>. The infrastructure
surrounding the routing to that domain name is handled in
<https://github.com/benating/cloud-resume-challenge>.

## Linting

This project uses pre-commit to run linting on most files through tools
like eslint. To get these to run automatically on each commit, install
[pre-commit](https://pre-commit.com).

This project also makes use of [commitlint](https://commitlint.js.org/#/)
and follows the
[conventional commits](https://www.conventionalcommits.org/en/v1.0.0/) format.
