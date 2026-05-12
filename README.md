# dial-legal

Public source of truth for dial's legal documents.

- [`privacy-policy.md`](./privacy-policy.md) — privacy policy
- [`terms-of-service.md`](./terms-of-service.md) — terms of service
- [`CHANGELOG.md`](./CHANGELOG.md) — material-change history

## How this is used

The `dial` app embeds this directory as a git submodule at `legal/` and ships the markdown inside the app. The same markdown is served as static pages via GitHub Pages so it can be linked from the App Store, Play Store, and the app's pre-auth screens.

## Updating the docs

1. Edit the markdown here, update the **Effective date** and **Last updated** lines, and append an entry to `CHANGELOG.md`.
2. Commit and push from inside `legal/`.
3. The pre-push hook (see below) regenerates `constants/legal.ts` in the parent `dial` repo and stages the submodule pointer bump. Commit those staged changes in `dial` and you're done.

## Hook setup (one-time per checkout)

This repo ships a versioned `hooks/pre-push` script that keeps the parent `dial` app in sync. To activate it after cloning or after `git submodule update --init`, run **inside the submodule checkout**:

```
git config core.hooksPath hooks
```

The hook is a no-op when this repo is checked out standalone, so it's safe to set everywhere.
