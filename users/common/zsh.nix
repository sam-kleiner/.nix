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
        { name = "plugins/git"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/httpie"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/kubectl"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/pip"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/poetry"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/rust"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/urltools"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/zsh-navigation-tools"; tags = [ from:oh-my-zsh ]; }
      ];
    };

    shellAliases = {
      rebuild-nix = "cd ~/.nix && sudo nixos-rebuild switch --flake .# && cd -";
      ls = "ls --color=auto";
      ll = "ls -lh --color=auto";            # list long no hidden
      la = "ls -lah --color=auto";           # list long with hidden"
      lm = "ls -lah --color=auto | more";
      ld = "ls -d */";                       # only directory"
      lh = "ls -ldh --color=auto .?*";       # only hidden dot files
      dev = "cd ~/dev";
      devc = "cd ~/dev/c#";
      devj = "cd ~/dev/java";
      devn = "cd ~/dev/node";
      devp = "cd ~/dev/python";
      devr = "cd ~/dev/rust";
      ".." = "cd ..";
      "..." = "cd ../..";
      "...." = "cd ../../..";
      "....." = "cd ../../../..";
      "......" = "cd ../../../../..";
      "......." = "cd ../../../../../..";
    };
  };
}
