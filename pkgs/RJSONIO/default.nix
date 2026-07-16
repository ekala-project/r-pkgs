{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "RJSONIO";
  version = "2.0.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RJSONIO_2.0.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RJSONIO/RJSONIO_2.0.5.tar.gz"
    ];
    sha256 = "17r5xfgdnhdb9rv3dpsz8cab3dys371qwbjn98rlh2wcr13l14na";
  };

  meta = {
    description = "R package RJSONIO";
    homepage = "https://cran.r-project.org/package=RJSONIO";
  };
}
