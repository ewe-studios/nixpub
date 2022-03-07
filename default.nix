{
    pkgs ? import <nixpkgs> {}
}:

{
    # do something here
    k0s = pkgs.callPackage ./modules/k0s {};
}