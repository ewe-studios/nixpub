{
	pkgs ? import <nixpkgs> {}
}:

pkgs.stdenv.mkDerivation rec {
    pname = "k0s";
    version = "v1.23.3+k0s.1-amd64";

    src = pkgs.fetchurl {
         url = "https://github.com/k0sproject/k0s/releases/download/v1.23.3%2Bk0s.1/k0s-v1.23.3+k0s.1-amd64";
         sha256 = "0ki0drb1dsy3izxa6z34qfqms2g4nnmwqxrshz9ih7pqkv2ggl8c";
    };

    sourceRoot = ".";
    dontConfigure = true;
    dontBuild = true;
    dontUnpack = true;

    buildInputs = [ pkgs.which  ];

    buildPhase = ''
    '';

    installPhase = ''
         mkdir -p $out/bin;
         cp $src $out/bin/k0s;
         chmod +x $out/bin/k0s;
         patchShebangs $out/bin/k0s;
    '';

    meta = {
         description= "k0s installation module for kubernetes clusters";
         homepage = "https://docs.k0sproject.io/v1.23.3+k0s.1/";
         maintainers = with pkgs.maintainers; [ k0sproject influx6 ];
         platforms = pkgs.lib.platforms.unix;
    };
}
