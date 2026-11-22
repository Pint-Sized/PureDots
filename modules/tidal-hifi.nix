{ config, ... }:

{
  xdg.configFile."tidal-hifi/themes/stylix.css".text =
    with config.lib.stylix.colors; # css
    ''
      :root {
        /* Base16 Background Hierarchy */
        --bg-void: #${base00};       /* Default Background */
        --bg-surface: #${base01};    /* Lighter Background (Sidebar / Player) */
        --bg-elevated: #${base02};   /* Selection / Cards */
        --bg-hover: #${base03};      /* Muted / Hover states */

        /* Base16 Foreground Hierarchy */
        --text-primary: #${base05};   /* Default Foreground */
        --text-secondary: #${base04}; /* Dark Foreground (Subtitles/Artists) */
        --text-bright: #${base07};    /* Light Foreground */

        /* Base16 Accents */
        --accent-primary: #${base0D};   /* Blue / Primary Accent */
        --accent-secondary: #${base0E}; /* Purple / Secondary Accent */
        --accent-hires: #${base0A};     /* Yellow / MAX & HiRes Badges */
        --accent-playing: #${base0B};   /* Green / Active Track */

        /* Alpha Overlays using Stylix RGB channels */
        --accent-primary-dim: rgba(${base0D-rgb-r}, ${base0D-rgb-g}, ${base0D-rgb-b}, 0.16);
        --accent-hires-dim: rgba(${base0A-rgb-r}, ${base0A-rgb-g}, ${base0A-rgb-b}, 0.16);
        --header-glass: rgba(${base00-rgb-r}, ${base00-rgb-g}, ${base00-rgb-b}, 0.85);
        --border-subtle: rgba(${base05-rgb-r}, ${base05-rgb-g}, ${base05-rgb-b}, 0.08);

        /* Override Tidal's Native Design Tokens */
        --wave-color-solid-base-brighter: var(--bg-surface) !important;
        --wave-color-solid-base-bright: var(--bg-void) !important;
        --wave-color-solid-base: var(--bg-void) !important;
        --wave-color-solid-base-dark: var(--bg-void) !important;
        --wave-color-solid-accent-fill: var(--accent-primary) !important;
        --wave-color-text-main: var(--text-primary) !important;
        --wave-color-text-secondary: var(--text-secondary) !important;
      }

      /* Main Canvas */
      body,
      #main,
      [class*="mainContainer"],
      [class*="container--"] {
        background-color: var(--bg-void) !important;
        color: var(--text-primary) !important;
        font-family: "${config.stylix.fonts.sansSerif.name}", sans-serif !important;
      }

      /* Left Navigation Sidebar */
      nav[class*="sidebar"],
      [class*="navigationBar"] {
        background-color: var(--bg-surface) !important;
        border-right: 1px solid var(--border-subtle) !important;
      }

      nav a[aria-current="page"],
      [class*="activeTab"] {
        color: var(--accent-primary) !important;
        background-color: var(--accent-primary-dim) !important;
        border-radius: 8px;
      }

      /* Top Bar & Search */
      header,
      [class*="header--"],
      [class*="searchInput"] {
        background-color: var(--header-glass) !important;
        backdrop-filter: blur(12px) !important;
        border-bottom: 1px solid var(--border-subtle) !important;
      }

      /* Album & Playlist Cards */
      [class*="card--"],
      [class*="mediaCard"] {
        background-color: var(--bg-surface) !important;
        border: 1px solid var(--border-subtle) !important;
        border-radius: 10px !important;
        transition: transform 0.2s ease, background-color 0.2s ease !important;
      }

      [class*="card--"]:hover,
      [class*="mediaCard"]:hover {
        background-color: var(--bg-elevated) !important;
        transform: translateY(-2px);
      }

      /* Tracklist Rows */
      [class*="trackItem"]:hover,
      [data-test="tracklist-row"]:hover {
        background-color: var(--bg-elevated) !important;
        border-radius: 6px;
      }

      /* Currently Playing Track */
      [class*="isPlaying"],
      [class*="activeTrack"] {
        color: var(--accent-playing) !important;
      }

      /* Bottom Player Bar */
      footer,
      [class*="player--"],
      [class*="footerPlayer"] {
        background-color: var(--bg-surface) !important;
        border-top: 1px solid var(--border-subtle) !important;
      }

      /* Progress & Volume Sliders */
      [class*="progressBar"] [class*="fill"],
      [class*="rangeSlider"] [class*="fill"] {
        background-color: var(--accent-primary) !important;
      }

      /* Primary Action Buttons (Play / Shuffle) */
      button[data-test="play-all"],
      button[class*="primaryButton"] {
        background-color: var(--accent-primary) !important;
        color: var(--bg-void) !important;
        font-weight: 700 !important;
      }

      /* MAX / HiRes Audio Badges */
      [data-test="quality-badge"],
      [class*="qualityBadge"] {
        color: var(--accent-hires) !important;
        background-color: var(--accent-hires-dim) !important;
        border: 1px solid var(--accent-hires) !important;
        border-radius: 4px !important;
      }

      /* Scrollbars */
      ::-webkit-scrollbar {
        width: 6px;
        height: 6px;
      }
      ::-webkit-scrollbar-track {
        background: var(--bg-void);
      }
      ::-webkit-scrollbar-thumb {
        background: var(--bg-elevated);
        border-radius: 3px;
      }
      ::-webkit-scrollbar-thumb:hover {
        background: var(--accent-primary);
      }
    '';
}
