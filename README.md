# dial-legal

Public source of truth for dial's legal documents.

- [`privacy-policy.md`](./privacy-policy.md) — privacy policy
- [`terms-of-service.md`](./terms-of-service.md) — terms of service
- [`CHANGELOG.md`](./CHANGELOG.md) — material-change history

## How this is used

The `dial` app embeds this directory as a git submodule at `legal/`. `npm run sync:legal` in `dial` copies the markdown into `constants/legal.ts`, which the app ships, and `web/lib/legal.ts`, which the website serves at [dial.16g.ca/legal](https://dial.16g.ca/legal): [privacy](https://dial.16g.ca/legal/privacy) and [terms](https://dial.16g.ca/legal/terms). Those are the links to use in the App Store, Play Store, and anywhere else.

## Updating the docs

1. Edit the markdown here, update the **Effective date** and **Last updated** lines, and add an entry to `CHANGELOG.md` (newest first).
2. From inside `legal/`: `git commit` and `git push`.
3. Back in `dial/`: `npm run sync:legal` regenerates `constants/legal.ts` and `web/lib/legal.ts`. Then `git add legal constants/legal.ts web/lib/legal.ts && git commit -m "chore(legal): bump submodule"`.
4. The change is public once `web/` is deployed to production, and in the app with its next build or update.

Merge pull requests here with a merge commit, not a squash or rebase. `dial` points its submodule at the commit you made, and a squash or rebase leaves `main` without it, so the pointer breaks once the branch is deleted. If one does get squashed, point `dial`'s submodule at the new `main` before deleting the branch.

(The `prestart`/`preios`/`preandroid`/`preweb` hooks in `dial/package.json` also re-run `sync:legal` automatically when you boot the dev server, so the in-app content never goes stale during local development.)
