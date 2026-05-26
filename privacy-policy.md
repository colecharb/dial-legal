# Privacy Policy

**Effective date:** 2026-05-12
**Last updated:** 2026-05-12

This Privacy Policy explains what information dial collects, why, who we share it with, and what you can do about it. We've tried to write it plainly. If something is unclear, email us at [dial.brews@gmail.com](mailto:dial.brews@gmail.com).

## Who we are

dial is operated by **Sixteen Grams**, a corporation registered in Ontario, Canada ("dial", "we", "us"). For privacy purposes, we act as the data controller for the information described below.

## Summary

- We collect the minimum we need to run the app: your account info, what you log (brews, coffees, equipment), and basic device/version info on app launch.
- Most of what you post in dial — brews, ratings, brew notes, usernames — is **visible to other users by default**. Don't put anything in your brews you wouldn't want public.
- We don't sell your data and we don't run advertising. We do use one product-analytics tool (PostHog, hosted in the EU) on the iOS and Android apps to understand how dial is used — details below. The web app has no analytics. You can opt out at any time by emailing us.
- Your data is stored with Supabase in the United States (Ohio).
- You can delete your account at any time from inside the app.

## Information we collect

### Account information

- **Email address** (for email/password signup, password resets, account communication)
- **Password** (stored hashed by our auth provider; we never see your plaintext password)
- **Apple identifier** (if you sign in with Apple — Apple may also share your name and email; you can hide your real email via Apple's relay service)
- **Username** (chosen by you, public)
- **Full name** (only if Apple shares it on first sign-in; not currently editable in-app)

### Content you create

Anything you log or create in dial, including:

- Brews: ratings, notes, recipes, weights, brew times, TDS/EY measurements
- Coffees, roasters, grinders, brewers, burrs you add
- Your cellar (what coffees you have, when you got them, when you froze/unfroze them, optional cost and notes — cost and notes stay private)
- Equipment usage records
- App settings and preferences

### Technical information collected on app launch

Each time you open dial, we record:

- IP address
- User agent (device/browser identifier)
- Platform (iOS, Android, web)
- App version (JS bundle, native build, OTA update ID)
- Your user ID (if signed in)

We use this to enforce minimum supported versions, debug issues, and understand basic adoption. Each app launch also writes one session record (the version and device details above, plus your IP and user agent) so we can support debugging and version enforcement. For product analytics, see the next section.

## Product analytics

On the **iOS and Android apps only**, we use [PostHog](https://posthog.com) (the `posthog-react-native` library) to understand how dial is used so we can improve it. Events are sent to PostHog's **EU cloud** (`eu.i.posthog.com`), which keeps the event data in the EU. PostHog Inc. is a US company; see "International data transfers" below. The **web app sends no analytics at all**.

**What we send:**

- Your dial user ID (your account identifier) when you're signed in, so events can be grouped per user.
- Technical context: platform, app version (JS bundle, native build, OTA update ID), and whether you're signed in.
- Product events and their basic properties: screens viewed, brews logged, cellar actions, searches, settings changes, login/signup outcomes, and app open/background with session duration. Properties are limited to things like which item or screen was involved, a rating, and lengths/counts (e.g. how long a note was, how many results a search returned).

**What we do _not_ send to PostHog:** your email, password, username, the text of your brew notes or recipes, or your private cellar cost and notes.

**Legal basis.** For most users we rely on legitimate interest (improving the product). For users in the EU, UK, and Quebec we rely on consent.

**Opting out.** You can opt out of product analytics at any time by emailing [dial.brews@gmail.com](mailto:dial.brews@gmail.com). We'll turn off analytics collection on your account and delete any analytics data we hold about you in PostHog. You can also simply use the web app, which has no analytics.

**Retention.** Analytics events are retained according to our PostHog plan's retention period (currently up to 1 year), after which they are deleted.

## How we use your information

- To run the app and let you log and review your coffee
- To authenticate you and keep your account secure
- To enforce minimum supported app versions and deliver over-the-air updates
- To respond to support requests
- To comply with legal obligations (e.g. responding to lawful requests)

We do not use your information for advertising or sell it to third parties.

## What is public to other dial users

By default, dial is a community app. Other signed-in users can see:

- Your username
- Brews you log (including notes and ratings)
- Coffees, roasters, grinders, brewers you've added
- Roast and freeze/unfreeze dates from your cellar entries (cost and notes are kept private)

We do not currently offer a "private brew" or "hide profile" option. Treat anything you post as public.

## Future feature: roaster analytics

We plan to share aggregated and coffee-specific analytics with roasters whose coffees you log — for example, average ratings, brew counts, and brew notes for the coffees they roast. This will be tied to the public brew data described above. We will not share your email, IP address, or private cellar information with roasters. We'll update this policy with more detail before this feature launches.

## Third parties that process your data

dial uses a small number of service providers ("processors") to operate. They process your data on our behalf under their own privacy and security terms:

- **Supabase** — authentication, database, file storage. Hosted in `us-east-2` (Ohio, USA).
- **PostHog** — product analytics on the iOS and Android apps. Event data is stored in PostHog's EU (Frankfurt) cloud; the service is operated by PostHog Inc. (USA). See PostHog's [privacy policy](https://posthog.com/privacy) and [data processing agreement](https://posthog.com/dpa).
- **Apple** — Sign in with Apple, App Store distribution, push notification infrastructure (if/when used).
- **Google** — Google Play distribution (when available).
- **Expo / EAS** — over-the-air updates and app build distribution.

If we add new processors in a way that materially changes how your data is handled, we'll update this policy.

## International data transfers

Because our database is hosted in the United States, your data is transferred from Canada (and wherever else you live) to the US for storage and processing. Supabase, our processor, maintains Standard Contractual Clauses and equivalent safeguards for users in the EU, UK, and other regions where required.

Our analytics provider, PostHog, stores event data in its EU (Frankfurt) cloud, but PostHog Inc. is a US company and may access that data from the US under its data processing agreement.

## How long we keep your data

- **Account and content data** — until you delete your account. When you delete your account, your authentication record and personal data are deleted; coffees, roasters, and equipment you added that are referenced by other users' brews are kept (your name is dissociated from them).
- **Session telemetry** (IP, user agent, version) — retained indefinitely for now to support debugging and version enforcement. We may shorten this in the future and will update this policy if we do.

## Your rights

You can:

- **Access, correct, or delete your data.** Delete your account in-app under Profile → Delete Account. To access or correct other data, email us.
- **Request an export of your data.** We don't yet have a self-serve export tool. Email [dial.brews@gmail.com](mailto:dial.brews@gmail.com) and we'll get you a machine-readable copy within **30 days**.
- **Opt out of product analytics.** Email [dial.brews@gmail.com](mailto:dial.brews@gmail.com) and we'll turn off analytics on your account and delete any analytics data we hold about you in PostHog. (The web app collects no analytics.)
- **Withdraw consent** to processing where consent is the legal basis. The simplest way to do this is to delete your account.
- **Complain to a regulator.** In Canada, the Office of the Privacy Commissioner of Canada (priv.gc.ca). In the EU/UK, your local supervisory authority. In California, the California Privacy Protection Agency.

We don't charge for these requests. We may ask you to verify your identity before acting on one.

## Security

- All traffic between your device and our servers is encrypted with TLS.
- Supabase encrypts data at rest.
- On mobile, your auth tokens are stored in the device's secure enclave (iOS Keychain / Android Keystore via Expo SecureStore).
- No security is perfect. If we ever experience a breach that affects your data, we'll notify you and the relevant regulators as required by law.

## Children

dial is not intended for users under 16. We do not knowingly collect personal information from anyone under 16. If you believe a child under 16 has created an account, email us and we'll delete it.

## Marketing communications

We do not currently send marketing or promotional emails. We only send transactional emails (e.g. password reset, account-related notices). If we ever start sending marketing emails, you'll be asked to opt in first.

## Changes to this policy

When we make material changes, we'll update the "Effective date" at the top and surface the change in the app on your next launch. Continuing to use dial after a change means you accept the updated policy.

## Contact

Questions, requests, or complaints: [dial.brews@gmail.com](mailto:dial.brews@gmail.com).
