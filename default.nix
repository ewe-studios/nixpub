{
    pkgs ? import <nixospkgs> {
        overlays = [
            (import "./overlays.nix")
        ];
    }
}:

{
    # do something here
    k0s = super.callPackages ./modules/k0s {};
}