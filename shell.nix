let
  nixpkgs = builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/refs/pull/372555/head.tar.gz";
    sha256 = "sha256:17ryc2gqnr7q1wygv24nrac3715718ibxfl3whr0zjipzpag4vzd";
  };
  pkgs = import nixpkgs { };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    (satysfi.override {
      packages = with pkgs.satysfiPackages; [
        fss
      ];
    })
    # satysfi
  ];
}
