{ config, ... }:

{
  xdg.configFile."tidal-hifi/themes/myTheme.scss".text = with config.lib.stylix.colors.withHashtag; ''
    @use "base" with (
       $bg-main: ${base00},
       $bg-secondary: ${base01},
       $bg-surface: ${base02},
       $bg-elevated: ${base03},
       $bg-hover: ${base0D},
       $bg-selection: ${base02},
       $bg-custom-titlebar: ${base01},

       $text-primary: ${base07},
       $text-secondary: ${base06},
       $text-muted: ${base05},
       $text-faint: ${base03},

       $accent-primary: ${base0D},
       $accent-green: ${base0B},
       $accent-red: ${base08},
       $accent-blue: ${base09},
       $accent-purple: ${base0E},
       $accent-cyan: ${base0C},
       $accent-yellow: ${base0A},

       $border-subtle: ${base02},
       $border-dim: ${base03}
     );

     @use "base-new" with (
       $bg-main: ${base00},
       $bg-secondary: ${base01},
       $bg-surface: ${base02},
       $bg-elevated: ${base03},
       $bg-hover: ${base0D},
       $bg-selection: ${base02},
       $bg-custom-titlebar: ${base01},

       $text-primary: ${base07},
       $text-secondary: ${base06},
       $text-muted: ${base05},
       $text-faint: ${base03},

       $accent-primary: ${base0D},
       $accent-green: ${base0B},
       $accent-red: ${base08},
       $accent-blue: ${base09},
       $accent-purple: ${base0E},
       $accent-cyan: ${base0C},
       $accent-yellow: ${base0A},

       $border-subtle: ${base02},
       $border-dim: ${base03}
     );
  '';
}
