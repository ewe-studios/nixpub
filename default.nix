{
    pkgs ? import <nixospkg> {
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