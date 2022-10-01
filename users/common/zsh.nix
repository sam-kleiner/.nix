{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    initExtra = "source ~/.nix/users/common/zsh/.zshrc";

    zplug = {
      enable = true;
      plugins = [
        { name = "romkatv/powerlevel10k"; tags = [ as:theme depth:1 ]; }

        { name = "plugins/autojump"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/colored-man-pages"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/direnv"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/encode64"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/fd"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/fzf"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/git"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/httpie"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/kubectl"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/pip"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/poetry"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/ripgrep"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/rust"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/urltools"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/zsh-navigation-tools"; tags = [ from:oh-my-zsh ]; }
      ];
    };
  };
}
