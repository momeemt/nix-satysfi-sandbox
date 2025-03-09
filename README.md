# nix-satysfi-sandbox
NixOS/nixpkgsに追加しようとしているSATySFiのパッケージビルドサポートを試すためのリポジトリ

実行にはNix環境が必要です

## 試してみる
```sh
nix-shell
```

nix-shell環境内で、以下のコマンドを実行すると文書のビルドができます

```sh
satysfi main.saty
```

次に、`shell.nix`のコメントアウトを切り替えます

```sh
pkgs.mkShell {
  buildInputs = with pkgs; [
    # (satysfi.override {
    #   packages = with pkgs.satysfiPackages; [
    #     fss
    #   ];
    # })
    satysfi
  ];
}
```

再度、nix-shell環境に入ってコンパイルを行うと、`fss`が存在しないためビルドに失敗するはずです

