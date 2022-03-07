{
    pkgs ? import <nixospkg> {
        overlays = [
            (import "./overlays.nix")
        ];
    }
}:

with pkgs;

{
    # do something here
}