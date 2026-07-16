{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "fontBitstreamVera";
  version = "0.1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fontBitstreamVera_0.1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fontBitstreamVera/fontBitstreamVera_0.1.1.tar.gz"
    ];
    sha256 = "0nipdlmhjv1wr3aidcl97nk6mppdkd65krgwqnhdsnv0jpfv761j";
  };

  meta = {
    description = "R package fontBitstreamVera";
    homepage = "https://cran.r-project.org/package=fontBitstreamVera";
  };
}
