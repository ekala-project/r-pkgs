{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "pwr";
  version = "1.3-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pwr_1.3-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pwr/pwr_1.3-0.tar.gz"
    ];
    sha256 = "1kfzy73v3z6ipc3kdfkcjrp4b4p5k54nwk796gqi36srm93hgc2v";
  };

  meta = {
    description = "R package pwr";
    homepage = "https://cran.r-project.org/package=pwr";
  };
}
