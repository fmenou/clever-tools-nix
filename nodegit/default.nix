{ pkgs }: with pkgs;

if stdenv.system == "x86_64-linux"
then callPackage ./x86_64-linux.nix {}
else abort ("unsupported platform " + stdenv.system)
