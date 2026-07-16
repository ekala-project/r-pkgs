{
  buildRPackage,
  fetchurl,
  R6,
  callr,
  cli,
  curl,
  desc,
  filelock,
  jsonlite,
  lpSolve,
  pkgbuild,
  pkgcache,
  processx,
  ps,
  zip,
}:

buildRPackage {
  pname = "pkgdepends";
  version = "0.9.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pkgdepends_0.9.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pkgdepends/pkgdepends_0.9.1.tar.gz"
    ];
    sha256 = "0ac2hnnbxdi22mm41865456mlx12bvnixac3bn1glq8pcsqa9xww";
  };

  propagatedBuildInputs = [
    R6
    callr
    cli
    curl
    desc
    filelock
    jsonlite
    lpSolve
    pkgbuild
    pkgcache
    processx
    ps
    zip
  ];

  meta = {
    description = "R package pkgdepends";
    homepage = "https://cran.r-project.org/package=pkgdepends";
  };
}
