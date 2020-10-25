with import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/0cfe5377e8993052f9b0dd56d058f8008af45bd9.tar.gz") {};
let
  basePackages = [
    python38
    jupyter
  ];

  inputs = basePackages;

  # define shell startup command
  hooks = ''
    jupyter notebook python_new_features_exploration.ipynb
  '';

in mkShell {
  buildInputs = inputs;
  shellHook = hooks;
}
