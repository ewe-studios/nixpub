{
    pkgs ? import <nixospkgs> {
        overlays = [
            (import "./overlays.nix")
        ];
    }
}:

{
    # do something here
}