{
  buildRPackage,
  fetchurl,
  R6,
  callr,
  cli,
  curl,
  filelock,
  jsonlite,
  processx,
}:

buildRPackage {
  pname = "pkgcache";
  version = "2.2.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pkgcache_2.2.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pkgcache/pkgcache_2.2.5.tar.gz"
    ];
    sha256 = "0vsy8arwdsrxi6ylk2wp32wk6sv2snmy6h9rwayg5xfhcsj8xdsc";
  };

  propagatedBuildInputs = [
    R6
    callr
    cli
    curl
    filelock
    jsonlite
    processx
  ];

  meta = {
    description = "R package pkgcache";
    homepage = "https://cran.r-project.org/package=pkgcache";
  };
}
