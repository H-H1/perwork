<script>
export default {
  onLaunch: function () {
    console.log('App Launch')
  },
  onShow: function () {
    console.log('App Show')
  },
  onHide: function () {
    console.log('App Hide')
  },
}
</script>

<style lang="scss">
@import '@/styles/tokens.css';

/* 全局页面样式 */
page {
  background-color: $color-bg-base;
  color: $color-text-primary;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
  font-size: $text-base;
  line-height: 1.6;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

/* 安全区域适配 */
page {
  padding-top: env(safe-area-inset-top);
  padding-bottom: env(safe-area-inset-bottom);
}

/* 全局滚动条样式 (H5) */
::-webkit-scrollbar {
  width: 6px;
}

::-webkit-scrollbar-track {
  background: $color-bg-subtle;
}

::-webkit-scrollbar-thumb {
  background: $color-text-muted;
  border-radius: $radius-full;
}

/* 选中文字颜色 */
::selection {
  background: rgba(14, 165, 233, 0.3);
  color: #fff;
}

/* 动画 — reduced motion 适配 */
@media (prefers-reduced-motion: reduce) {
  *,
  *::before,
  *::after {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
  }
}
</style>
