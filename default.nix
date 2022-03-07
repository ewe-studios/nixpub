{
    pkgs ? import <nixospkgs> {}
}:

{
    # do something here
    k0s = pkgs.callPackages ./modules/k0s {};
}