<template>
  <view class="page">
    <!-- 主内容区 -->
    <view class="content">
      <!-- 个人照片 -->
      <view class="photo-container">
        <image
          class="personal-photo"
          src="./个人照片.jpg"
          mode="aspectFill"
        />
        <view class="photo-ring" />
      </view>

      <!-- 个人简介 -->
      <view class="intro-section">
        <text class="intro-text">欢迎来到我的个人主页</text>
        <text class="intro-desc">这里展示我的个人经历、兴趣爱好与生活点滴</text>
      </view>

      <!-- 姓名按钮 -->
      <navigator url="/pages/apex/apex" class="name-btn" hover-class="name-btn-active">
        <text class="name-text">黄域琪</text>
        <text class="name-subtitle">点击进入个人页面</text>
      </navigator>
    </view>
  </view>
</template>

<script>
export default {
  data() {
    return {}
  }
}
</script>

<style lang="scss">

.page {
  min-height: 100vh;
  background: $color-bg-base;
  display: flex;
  align-items: center;
  justify-content: center;
}

.content {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  width: 100%;
  padding: 0 $space-8;
  gap: $space-12;
}

/* 个人简介 */
.intro-section {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: $space-2;
  text-align: center;
  max-width: 300px;
}

.intro-text {
  font-size: $text-lg;
  font-weight: 700;
  color: $color-text-primary;
  letter-spacing: 0.02em;
}

.intro-desc {
  font-size: $text-sm;
  color: $color-text-muted;
  line-height: 1.6;
}

/* 个人照片 */
.photo-container {
  position: relative;
  width: 200px;
  height: 200px;
  margin-bottom: $space-4;
}

.personal-photo {
  width: 200px;
  height: 200px;
  border-radius: $radius-full;
  position: relative;
  z-index: 1;
  box-shadow: $shadow-lg;
}

.photo-ring {
  position: absolute;
  top: -8px;
  left: -8px;
  right: -8px;
  bottom: -8px;
  border-radius: $radius-full;
  background: linear-gradient(135deg, $color-brand, $color-accent, $color-brand);
  z-index: 0;
  animation: ring-rotate 4s linear infinite;

  &::after {
    content: '';
    position: absolute;
    top: 4px;
    left: 4px;
    right: 4px;
    bottom: 4px;
    border-radius: $radius-full;
    background: $color-bg-base;
  }
}

@keyframes ring-rotate {
  0%   { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}

@media (prefers-reduced-motion: reduce) {
  .photo-ring {
    animation: none;
  }
}

/* 姓名按钮 */
.name-btn {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: $space-4;
  padding: $space-8 $space-12;
  background: $color-bg-raised;
  border: 2px solid $color-border;
  border-radius: $radius-xl;
  text-decoration: none;
  width: 100%;
  max-width: 300px;
  transition: all 0.2s ease;
  box-shadow: $shadow-lg;
  
  &:active {
    transform: scale(0.98);
    border-color: $color-brand;
    box-shadow: $shadow-glow-brand;
    background: $color-bg-subtle;
  }
}

.name-btn-active {
  transform: scale(0.98);
  border-color: $color-brand;
  box-shadow: $shadow-glow-brand;
  background: $color-bg-subtle;
}

.name-text {
  font-size: 36px;
  font-weight: 800;
  color: $color-text-primary;
  letter-spacing: 0.02em;
  line-height: 1.1;
  text-align: center;
}

.name-subtitle {
  font-size: $text-sm;
  color: $color-text-muted;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  font-weight: 500;
}
</style>
