with import <nixpkgs> { };
mkShell {
  nativeBuildInputs = [
    luaformatter
    sumneko-lua-language-server
    nodePackages.prettier
    nodePackages.vim-language-server
  ];
}
