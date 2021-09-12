with import <nixpkgs> { };
mkShell {
  nativeBuildInputs = [
    luajit
    luaformatter
    sumneko-lua-language-server
    nodePackages.prettier
    nodePackages.vim-language-server
  ];
}
