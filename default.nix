{
    pkgs ? import <nixospkgs> {
        overlays = [
            (import "./overlays.nix")
        ];
    }
}:

let
    config = pkgs.config;
in

{
    # do something here
}