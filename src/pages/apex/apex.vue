<template>
  <view class="page">
    <!-- 自定义导航栏 -->
    <view class="nav-bar">
      <view class="nav-bar-safe" />
      <view class="nav-bar-content">
        <navigator url="/pages/index/index" class="nav-back" hover-class="nav-back-active">
          <text class="nav-back-arrow">←</text>
          <text class="nav-back-text">返回</text>
        </navigator>
        <text class="nav-title">关于 黄彧祁</text>
        <view class="nav-placeholder" />
      </view>
    </view>

    <!-- 内容区 -->
    <scroll-view scroll-y class="scroll-body" enhanced :show-scrollbar="false">

      <!-- ========== 章节一：故事 ========== -->
      <view class="section section-story">
        <view class="section-header">
          <text class="section-label">CHAPTER 01</text>
          <text class="section-title">翱翔不止，战意不息</text>
        </view>

        <!-- 故事主图 -->
        <view class="story-hero-img-wrap">
          <image
            class="story-hero-img"
            src="./故事的图片.jpg"
            mode="aspectFill"
          />
          <view class="story-hero-gradient" />
        </view>

        <!-- 故事正文 -->
        <view class="story-body">
          <text class="story-paragraph">
            从初见瓦尔基里的那一刻，便注定与这位苍穹战神结缘。她背负传承、渴望翱翔、果敢坚韧的内核，与我在Apex战场的追求不谋而合。
          </text>
          <text class="story-paragraph">
            历时无数场对局，累计<text class="story-highlight">1,485,569</text>点总伤害，<text class="story-highlight">3,432</text>次击杀，拿下双锤、骷髅海高阶徽章。每一次升空绕后、每一轮空袭压制、每一场绝境翻盘，都是与瓦尔基里并肩前行的证明。
          </text>
          <text class="story-paragraph">
            我始终相信，瓦尔基里不止是一个游戏角色，更是一种挣脱束缚、直冲云霄的态度。以战甲为骨，以战意为魂，用实战证明：翱翔天际者，终能掌控战场。
          </text>
        </view>
      </view>

      <!-- ========== 分隔线 ========== -->
      <view class="section-divider" />

      <!-- ========== 章节二：服务内容 ========== -->
      <view class="section section-services">
        <view class="section-header">
          <text class="section-label">CHAPTER 02</text>
          <text class="section-title">瓦尔基里 · 苍穹实战内容</text>
        </view>

        <!-- 服务卡片列表 -->
        <view class="service-list">
          <view class="service-card">
            <view class="service-icon-wrap">
              <text class="service-icon-text">01</text>
            </view>
            <view class="service-info">
              <text class="service-name">角色实战教学</text>
              <text class="service-desc">升空点位、空袭思路、拉扯打法、决赛圈运营，依托百万伤害实战经验，拆解瓦尔基里全场景对局技巧</text>
            </view>
          </view>

          <view class="service-card">
            <view class="service-icon-wrap">
              <text class="service-icon-text">02</text>
            </view>
            <view class="service-info">
              <text class="service-name">角色美学分享</text>
              <text class="service-desc">战甲原画解析、机甲风格鉴赏、角色背景故事、个人战绩名片创作</text>
            </view>
          </view>

          <view class="service-card">
            <view class="service-icon-wrap">
              <text class="service-icon-text">03</text>
            </view>
            <view class="service-info">
              <text class="service-name">对局复盘与案例</text>
              <text class="service-desc">收录双锤局、骷髅海高光对局，分享逆风翻盘、高空绕后、空袭收割实战案例</text>
            </view>
          </view>
        </view>

        <!-- 定价 -->
        <view class="pricing-card">
          <text class="pricing-title">内容定价</text>
          <view class="pricing-row">
            <text class="pricing-type">基础教学</text>
            <text class="pricing-value free">免费</text>
          </view>
          <view class="pricing-row">
            <text class="pricing-type">一对一对局指导</text>
            <text class="pricing-value">按需定制</text>
          </view>
          <view class="pricing-row">
            <text class="pricing-type">战绩名片定制设计</text>
            <text class="pricing-value accent">专属创作</text>
          </view>
        </view>

        <!-- 实战截图 -->
        <view class="gallery">
          <image class="gallery-img" src="./1172470_50.jpg" mode="aspectFill" />
          <image class="gallery-img" src="./3340cf75c8745c7cb9876583580e303.jpg" mode="aspectFill" />
          <image class="gallery-img" src="./7a274b2a71bd18dc3ef4f1955bbcf7a.jpg" mode="aspectFill" />
        </view>
      </view>

      <!-- ========== 分隔线 ========== -->
      <view class="section-divider" />

      <!-- ========== 章节三：联系方式 ========== -->
      <view class="section section-contact">
        <view class="section-header">
          <text class="section-label">CHAPTER 03</text>
          <text class="section-title">同爱瓦尔基里，共赴苍穹之约</text>
        </view>

        <view class="contact-card">
          <view class="contact-item">
            <text class="contact-label">联系邮箱</text>
            <text class="contact-value">contact@example.com</text>
          </view>
          <view class="contact-item">
            <text class="contact-label">留言表单</text>
            <text class="contact-value">姓名 ｜ 想交流的内容 ｜ 留言</text>
          </view>
          <view class="contact-item">
            <text class="contact-label">社交渠道</text>
            <text class="contact-value">Apex玩家社群 / 高光对局分享 / 角色交流群</text>
          </view>
        </view>

        <text class="contact-note">
          所有热爱瓦尔基里、向往翱翔战场的同好，欢迎交流对局心得、角色故事与美学创作。
        </text>
      </view>

      <!-- ========== 分隔线 ========== -->
      <view class="section-divider" />

      <!-- ========== 章节四：博客文章 ========== -->
      <view class="section section-blog">
        <view class="section-header">
          <text class="section-label">BLOG</text>
          <text class="section-title">最新文章</text>
        </view>

        <view class="blog-list">
          <view class="blog-card">
            <view class="blog-num">01</view>
            <view class="blog-info">
              <text class="blog-title">148万伤害背后：我与瓦尔基里的Apex征途</text>
              <view class="blog-meta">
                <text class="blog-arrow">阅读 →</text>
              </view>
            </view>
          </view>

          <view class="blog-card">
            <view class="blog-num">02</view>
            <view class="blog-info">
              <text class="blog-title">双锤骷髅海实战复盘：瓦尔基里高空战术全解析</text>
              <view class="blog-meta">
                <text class="blog-arrow">阅读 →</text>
              </view>
            </view>
          </view>

          <view class="blog-card">
            <view class="blog-num">03</view>
            <view class="blog-info">
              <text class="blog-title">苍穹战甲美学：瓦尔基里机甲原画设计解读</text>
              <view class="blog-meta">
                <text class="blog-arrow">阅读 →</text>
              </view>
            </view>
          </view>

          <view class="blog-card">
            <view class="blog-num">04</view>
            <view class="blog-info">
              <text class="blog-title">三千击杀感悟：为什么瓦尔基里是我的本命角色</text>
              <view class="blog-meta">
                <text class="blog-arrow">阅读 →</text>
              </view>
            </view>
          </view>
        </view>
      </view>

      <!-- 底部 -->
      <view class="footer">
        <text class="footer-text">翱翔天际者，终能掌控战场</text>
        <text class="footer-brand">黄彧祁 · 个人主页</text>
      </view>
    </scroll-view>
  </view>
</template>

<script>
export default {
  data() {
    return {}
  },
  onLoad() {},
}
</script>

<style lang="scss">

.page {
  min-height: 100vh;
  background: $color-bg-base;
}

/* 导航栏 */
.nav-bar {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 100;
  background: rgba($color-bg-base, 0.85);
  backdrop-filter: blur(12px);
  -webkit-backdrop-filter: blur(12px);
  border-bottom: 1px solid $color-border;
}
.nav-bar-safe {
  height: var(--status-bar-height, 0px);
}
.nav-bar-content {
  height: 44px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0 16px;
}
.nav-back {
  display: flex;
  align-items: center;
  gap: 4px;
  text-decoration: none;
  padding: 4px 0;
}
.nav-back-active {
  opacity: 0.6;
}
.nav-back-arrow {
  font-size: $text-lg;
  color: $color-brand;
}
.nav-back-text {
  font-size: $text-sm;
  color: $color-text-secondary;
}
.nav-title {
  font-size: 13px;
  font-weight: 700;
  letter-spacing: 0.2em;
  color: $color-text-muted;
  text-transform: uppercase;
}
.nav-placeholder {
  width: 60px;
}

/* 滚动体 */
.scroll-body {
  height: 100vh;
}

/* ============================================
   通用章节样式
   ============================================ */
.section {
  padding: $space-8 $space-4;
  padding-top: calc(var(--status-bar-height, 0px) + 68px);
}

.section:first-child {
  padding-top: calc(var(--status-bar-height, 0px) + 68px);
}

.section-header {
  margin-bottom: $space-8;
}

.section-label {
  display: block;
  font-size: 11px;
  font-weight: 700;
  color: $color-brand;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  margin-bottom: $space-2;
}

.section-title {
  display: block;
  font-size: 28px;
  font-weight: 800;
  color: $color-text-primary;
  letter-spacing: -0.02em;
  line-height: 1.2;
}

.section-divider {
  height: 1px;
  margin: $space-3 32px;
  background: linear-gradient(90deg, transparent, $color-border, transparent);
}

/* ============================================
   章节一：故事
   ============================================ */
.story-hero-img-wrap {
  position: relative;
  width: 100%;
  height: 260px;
  border-radius: $radius-lg;
  overflow: hidden;
  margin-bottom: $space-6;
}

.story-hero-img {
  width: 100%;
  height: 100%;
}

.story-hero-gradient {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  height: 60%;
  background: linear-gradient(to top, $color-bg-base, transparent);
  pointer-events: none;
}

.story-body {
  display: flex;
  flex-direction: column;
  gap: $space-4;
}

.story-paragraph {
  font-size: $text-base;
  color: $color-text-secondary;
  line-height: 1.8;
  letter-spacing: 0.01em;
}

.story-highlight {
  color: $color-brand;
  font-weight: 700;
}

/* ============================================
   章节二：服务
   ============================================ */
.service-list {
  display: flex;
  flex-direction: column;
  gap: $space-3;
  margin-bottom: $space-6;
}

.service-card {
  display: flex;
  gap: $space-4;
  background: $color-bg-raised;
  border: 1px solid $color-border;
  border-radius: $radius-lg;
  padding: $space-6;
  align-items: flex-start;

  &:active {
    transform: scale(0.98);
    transition: transform 0.12s ease;
  }
}

.service-icon-wrap {
  width: 44px;
  height: 44px;
  border-radius: $radius-md;
  background: $color-brand-subtle;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
}

.service-icon-text {
  font-size: $text-lg;
  font-weight: 800;
  color: $color-brand;
}

.service-info {
  flex: 1;
  display: flex;
  flex-direction: column;
  gap: $space-1;
}

.service-name {
  font-size: $text-base;
  font-weight: 700;
  color: $color-text-primary;
}

.service-desc {
  font-size: $text-sm;
  color: $color-text-muted;
  line-height: 1.6;
}

/* 定价 */
.pricing-card {
  background: $color-bg-raised;
  border: 1px solid $color-border;
  border-radius: $radius-lg;
  padding: $space-6;
  margin-bottom: $space-6;
}

.pricing-title {
  font-size: $text-sm;
  font-weight: 700;
  color: $color-text-primary;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  display: block;
  margin-bottom: $space-4;
}

.pricing-row {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 12px 0;
  border-top: 1px solid $color-border;

  &:first-of-type {
    border-top: none;
  }
}

.pricing-type {
  font-size: $text-sm;
  color: $color-text-secondary;
}

.pricing-value {
  font-size: $text-sm;
  font-weight: 700;
  color: $color-text-primary;
}

.pricing-value.free {
  color: $color-success;
}

.pricing-value.accent {
  color: $color-accent;
}

/* 画廊 */
.gallery {
  display: flex;
  gap: $space-2;
}

.gallery-img {
  flex: 1;
  height: 120px;
  border-radius: $radius-md;
}

/* ============================================
   章节三：联系方式
   ============================================ */
.contact-card {
  background: $color-bg-raised;
  border: 1px solid $color-border;
  border-radius: $radius-lg;
  padding: $space-6;
  display: flex;
  flex-direction: column;
  gap: $space-4;
}

.contact-item {
  display: flex;
  flex-direction: column;
  gap: $space-1;
}

.contact-label {
  font-size: $text-xs;
  color: $color-text-muted;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  font-weight: 600;
}

.contact-value {
  font-size: $text-sm;
  color: $color-text-primary;
  font-weight: 500;
}

.contact-note {
  display: block;
  margin-top: $space-6;
  font-size: $text-sm;
  color: $color-text-muted;
  text-align: center;
  line-height: 1.6;
  font-style: italic;
}

/* ============================================
   章节四：博客
   ============================================ */
.blog-list {
  display: flex;
  flex-direction: column;
  gap: $space-3;
}

.blog-card {
  display: flex;
  gap: $space-4;
  background: $color-bg-raised;
  border: 1px solid $color-border;
  border-radius: $radius-lg;
  padding: $space-5 $space-6;
  align-items: center;

  &:active {
    transform: scale(0.98);
    background: $color-bg-subtle;
    transition: all 0.12s ease;
  }
}

.blog-num {
  font-size: 18px;
  font-weight: 800;
  color: $color-brand;
  width: 36px;
  text-align: center;
  flex-shrink: 0;
}

.blog-info {
  flex: 1;
  display: flex;
  flex-direction: column;
  gap: $space-2;
}

.blog-title {
  font-size: $text-sm;
  font-weight: 600;
  color: $color-text-primary;
  line-height: 1.4;
}

.blog-meta {
  display: flex;
  align-items: center;
}

.blog-arrow {
  font-size: $text-xs;
  color: $color-brand;
  font-weight: 600;
}

/* ============================================
   底部
   ============================================ */
.footer {
  padding: $space-12 $space-4 $space-16;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: $space-2;
}

.footer-text {
  font-size: $text-sm;
  color: $color-text-muted;
  letter-spacing: 0.04em;
}

.footer-brand {
  font-size: 11px;
  font-weight: 700;
  color: $color-text-disabled;
  letter-spacing: 0.25em;
}
</style>
