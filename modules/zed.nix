{
  programs.zed-editor = {
    enable = true;
    extensions = [
      "nix"
      "toml"
      "rust"
    ];
    userSettings = {
      features = {
        copilot = true;
      };
      agent = {
        dock = "right";
      };
      project_panel = {
        dock = "left";
      };
      telemetry = {
        metrics = false;
      };
      vim_mode = true;
    };
  };
}
