# Design System

## Stack
- framework: uni-app 3.x (Vue 3.4 + Vite 5.2)
- styling: SCSS + CSS custom properties
- components: uni-app native (`<view>`, `<text>`, `<image>`, `<scroll-view>`, `<navigator>`)
- animation: CSS transitions + `prefers-reduced-motion` guards
- icons: Unicode glyphs

## Tokens
- brand: #0ea5e9 (sky-500, Valkyrie jetpack cyan)
- accent: #f59e0b (amber-500, Apex UI warmth)
- bg-base: #0b1120 / #f8fafc
- text-primary: #f1f5f9 / #0f172a
- radius: 12px
- shadow: layered (tight + ambient)
(full token map in src/uni.scss and src/styles/tokens.css)

## Decisions
- 2026-05-20 — init: uni-app detected. Adapted UI skill design tokens to SCSS + CSS custom properties. Dark gaming theme for Valkyrie/Apex personal brand.
- 2026-05-20 — brand color sky-500 chosen for Valkyrie's jetpack aesthetic; amber-500 accent for Apex Legends UI warmth.
- 2026-05-20 — pages/index/index.vue: Personal brand landing page with hero, stats cards, brand quote, and CTA. Uses layered shadows, animated ring gradient on photo, stats grid with ambient icon blobs.
- 2026-05-20 — pages/apex/apex.vue: Multi-section detail page (story, services, pricing, contact, blog). Gallery images, numbered service cards, gradient image overlay on hero image.

## Components
- `src/pages/index/index.vue` — Personal landing page: hero photo + identity + stats + brand quote + CTA navigator
- `src/pages/apex/apex.vue` — Detail page: story, services, pricing, gallery, contact, blog list

## Non-Goals
- No Figma sync
- No image generation
- No Tailwind (uni-app uses SCSS + custom properties)
- No skeleton/empty states for pages (pages are not reusable components; content is always present)
