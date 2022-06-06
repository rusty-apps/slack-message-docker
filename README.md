# slack-message <br/>![gh-test-status]![gh-release-status]

## A lean fast slack messaging app written in Rust

## Docker application for rusty-apps/slack-message GitHub action and other uses

---

**Useage:**
This container needs to be run with the following environment variables:

`SLACK_WEBHOOK`:
The slack webhook URL.

`MESSAGE`: A message for the slack message.
This can include the normal slack formating for URL's etc.

> detailed:

requires in addition to the webhook and message:
GITHUB_REPOSITORY, GITHUB_EVENT_NAME, GITHUB_REF and GITHUB_SHA

## Contributions & Support

First off, thank you for taking an interest. :smile:

We are an open and welcoming fledgling community, all help greatly appreciated.
Please adhere to our [CODE OF CONDUCT](CODE_OF_CONDUCT.md) when contributing.
See our [CONTRIBUTING GUIDE](CONTRIBUTING.md) for details.
Thank you.

Our [SUPPORT](SUPPORT.md) document details about getting answers for questions.

We have discussions enabled on this repository:
[DISCUSSIONS](https://github.com/rusty-apps/slack-message/discussions).


<!-- Badge links -->

[gh-test-status]: https://github.com/rusty-apps/slack-message/actions/workflows/test.yml/badge.svg
[gh-release-status]: https://github.com/rusty-apps/slack-message/actions/workflows/release.yml/badge.svg
