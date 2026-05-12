# dial-legal

Public source of truth for dial's legal documents.

- [`privacy-policy.md`](./privacy-policy.md) — privacy policy
- [`terms-of-service.md`](./terms-of-service.md) — terms of service
- [`CHANGELOG.md`](./CHANGELOG.md) — material-change history

## How this is used

The `dial` app embeds this directory as a git submodule at `legal/` and ships the markdown inside the app. The same markdown is served as static pages via GitHub Pages so it can be linked from the App Store, Play Store, and the app's pre-auth screens.

## Updating the docs

1. Edit the markdown here, update the **Effective date** and **Last updated** lines, and append an entry to `CHANGELOG.md`.
2. From inside `legal/`: `git commit` and `git push`.
3. Back in `dial/`: `npm run sync:legal` regenerates `constants/legal.ts`. Then `git add legal constants/legal.ts && git commit -m "chore(legal): bump submodule"`.

(The `prestart`/`preios`/`preandroid`/`preweb` hooks in `dial/package.json` also re-run `sync:legal` automatically when you boot the dev server, so the in-app content never goes stale during local development.)
