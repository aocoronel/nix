{
  pkgs,
  userSettings,
  ...
}: {
  programs.git = {
    enable = true;
    userName = userSettings.name;
    userEmail = userSettings.email;
    extraConfig = {
      init.defaultBranch = "main";
      safe.directory = [
        ("/home/" + userSettings.username + "/dotfiles")
        ("/home/" + userSettings.username + "/nix")
      ];
    };
  };
}
