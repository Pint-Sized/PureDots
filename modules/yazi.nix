{
  programs.yazi = {
    enable = true;
    enableFishIntegration = true;
    shellWrapperName = "y";
  };
  xdg.configFile."yazi/yazi.toml".text = # toml
    ''
      [mgr]
      show_hidden = true
      sort_by = "natural"
      sort_dir_first = true
      sort_sensitive = false
      sort_translit = true
      show_symlink = true

      [preview]
      wrap = "no"
      image_filter = "catmull-rom"
      image_quality = 90
    '';
}
