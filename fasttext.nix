{ stdenvNoCC }:

stdenvNoCC.mkDerivation {
  pname = "languagetool-fasttextmodel";
  version = "2020112323";

  src = fetchTarball {
    url = "https://languagetool.org/download/fasttext.tar.gz";
    sha256 = "193450b5v5q5i5hzym8d7b9j3mfvcrw3i6pjp3laaz576gxcml69";
  };

  dontBuild = true;
  dontConfigure = true;
  dontFixup = true;

  installPhase = ''
    mkdir -p $out/share/languagetool
    ln -s $src $out/share/languagetool/fasttextmodel
  '';
}

