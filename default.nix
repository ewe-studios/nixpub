{
    pkgs ? import <nixospkgs> {
        overlays = [
            (import "./overlays.nix")
        ];
    }
}:

{
    # do something here
    k0s = pkgs.callPackages ./modules/k0s {};
}