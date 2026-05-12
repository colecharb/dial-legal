# dial-legal

Public source of truth for dial's legal documents.

- [`privacy-policy.md`](./privacy-policy.md) — privacy policy
- [`terms-of-service.md`](./terms-of-service.md) — terms of service
- [`CHANGELOG.md`](./CHANGELOG.md) — material-change history

## How this is used

The `dial` app embeds this directory as a git submodule at `legal/` and ships the markdown inside the app. The same markdown is served as static pages via GitHub Pages so it can be linked from the App Store, Play Store, and the app's pre-auth screens.

## Updating the docs

1. Edit the markdown here, update the **Effective date** and **Last updated** lines, and append an entry to `CHANGELOG.md`.
2. Commit and push.
3. In the `dial` repo: `cd legal && git pull origin main && cd .. && git add legal && git commit -m "chore(legal): bump pointer"`. This pins the app build to the new version.
