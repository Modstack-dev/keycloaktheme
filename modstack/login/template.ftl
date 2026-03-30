<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayRequiredFields=false showMarketingPanel=true>
<!DOCTYPE html>
<html lang="${(locale.currentLanguageTag)!'en'}">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="robots" content="noindex, nofollow">
  <title>${msg("loginTitle",(realm.displayName!''))}</title>
  <#if properties.styles?has_content>
    <#list properties.styles?split(' ') as style>
      <link rel="stylesheet" href="${url.resourcesPath}/${style}">
    </#list>
  </#if>
</head>
<body>
  <div class="ms-split<#if !showMarketingPanel> ms-split--single</#if>">

    <#-- ── Left: Marketing Panel ────────────────────────────── -->
    <#if showMarketingPanel>
    <div class="ms-panel">
      <!-- Abstract flowing shapes -->
      <svg class="ms-panel__waves" viewBox="0 0 600 900" fill="none" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice">
        <path d="M-50 300 C100 250, 200 400, 350 350 S550 200, 700 300 L700 900 L-50 900Z" fill="url(#wave1)"/>
        <path d="M-50 450 C80 400, 250 550, 400 480 S580 350, 700 420 L700 900 L-50 900Z" fill="url(#wave2)"/>
        <path d="M-50 600 C120 560, 280 680, 420 620 S560 520, 700 580 L700 900 L-50 900Z" fill="url(#wave3)"/>
        <!-- Floating circles -->
        <circle cx="480" cy="180" r="60" fill="rgba(150,96,219,0.06)"/>
        <circle cx="100" cy="250" r="35" fill="rgba(150,96,219,0.05)"/>
        <circle cx="520" cy="400" r="25" fill="rgba(150,96,219,0.07)"/>
        <circle cx="80" cy="500" r="45" fill="rgba(150,96,219,0.04)"/>
        <defs>
          <linearGradient id="wave1" x1="0" y1="300" x2="600" y2="700" gradientUnits="userSpaceOnUse">
            <stop offset="0%" stop-color="#9660db" stop-opacity="0.08"/>
            <stop offset="100%" stop-color="#6b3fa0" stop-opacity="0.15"/>
          </linearGradient>
          <linearGradient id="wave2" x1="0" y1="400" x2="600" y2="800" gradientUnits="userSpaceOnUse">
            <stop offset="0%" stop-color="#9660db" stop-opacity="0.06"/>
            <stop offset="100%" stop-color="#7b4fb8" stop-opacity="0.12"/>
          </linearGradient>
          <linearGradient id="wave3" x1="0" y1="550" x2="600" y2="900" gradientUnits="userSpaceOnUse">
            <stop offset="0%" stop-color="#9660db" stop-opacity="0.04"/>
            <stop offset="100%" stop-color="#8860c8" stop-opacity="0.10"/>
          </linearGradient>
        </defs>
      </svg>
      <!-- Radial glow -->
      <div class="ms-panel__glow ms-panel__glow--top"></div>
      <div class="ms-panel__glow ms-panel__glow--bottom"></div>
      <!-- Content -->
      <div class="ms-panel__inner">
        <div class="ms-panel__hero">
          <h2 class="ms-panel__headline"><span class="ms-panel__brand-text">ModStack</span> is the developer platform for modern backends</h2>
          <p class="ms-panel__tagline">Ship to any cloud with pre-built modules, git-based deployments, and security built in from day one.</p>
        </div>
        <div class="ms-panel__footer">
          <p>&copy; ModStack</p>
        </div>
      </div>
    </div>
    </#if>

    <#-- ── Right: Form Panel ────────────────────────────────── -->
    <div class="ms-form-panel">
      <div class="ms-form-panel__inner">

        <div class="ms-form-panel__logo">
          <img src="${url.resourcesPath}/img/logo.svg" alt="ModStack">
        </div>

        <h1 class="ms-card__title"><#nested "header"></h1>
        <p class="ms-card__subtitle"><#nested "subtitle"></p>

        <#-- Alerts -->
        <#if displayMessage && message?has_content && (message.type != 'warning' || !isAppInitiatedAction??)>
          <div class="ms-alert ms-alert--${message.type}">
            ${kcSanitize(message.summary)?no_esc}
          </div>
        </#if>

        <#nested "form">

        <#if displayInfo>
          <div class="ms-form-footer">
            <#nested "info">
          </div>
        </#if>

      </div>
    </div>

  </div>
</body>
</html>
</#macro>
