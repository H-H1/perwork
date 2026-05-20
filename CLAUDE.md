# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Stack

- **Framework**: uni-app 3.x (Vue 3.4 + Vite 5.2)
- **i18n**: vue-i18n v9

## Commands

```bash
# H5 dev server (browser)
npm run dev:h5

# H5 production build
npm run build:h5

# Mini-program dev (WeChat)
npm run dev:mp-weixin

# Other platforms
npm run dev:mp-alipay       # Alipay mini-program
npm run dev:mp-baidu        # Baidu mini-program
npm run dev:mp-toutiao      # ByteDance mini-program
npm run dev:mp-harmony      # HarmonyOS

# Custom platform target
npm run dev:custom          # prompts for platform
npm run build:custom        # prompts for platform
```

## Architecture

uni-app compiles a single Vue 3 codebase to multiple platforms (H5, iOS/Android app, mini-programs). Platform-specific APIs are handled by `@dcloudio/uni-app` at compile time.

- **Entry point**: `src/main.js` — creates an SSR-capable Vue app via `createSSRApp`. Exports a `createApp()` factory, not a direct `app.mount()` call.
- **App root**: `src/App.vue` — lifecycle hooks (`onLaunch`, `onShow`, `onHide`) and global CSS. No template; acts as an app-level controller.
- **Page routing**: `src/pages.json` — declarative page registration. The first entry in `pages` is the app launch page. Paths map to `.vue` files under `src/pages/`. `globalStyle` sets default navigation bar appearance.
- **App manifest**: `src/manifest.json` — per-platform configuration (app permissions, splash screen, mini-program app IDs, etc.).
- **Theme variables**: `src/uni.scss` — SCSS variables for colors, spacing, fonts, border-radius. Used by uni-app plugins and the app's own styles. No import needed when using SCSS.
- **Page files**: Conventionally `src/pages/<name>/<name>.vue`. Each page component uses uni-app template tags (`<view>`, `<text>`, `<image>`) and lifecycle hooks (`onLoad`, `onShow`, `onReady`).
- **Type shims**: `src/shime-uni.d.ts` and `shims-uni.d.ts` — augment Vue component options with uni-app page/instance hooks for TypeScript.
