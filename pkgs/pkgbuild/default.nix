{
  buildRPackage,
  fetchurl,
  R6,
  callr,
  cli,
  desc,
  processx,
}:

buildRPackage {
  pname = "pkgbuild";
  version = "1.4.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pkgbuild_1.4.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pkgbuild/pkgbuild_1.4.8.tar.gz"
    ];
    sha256 = "1jr4k43vj62hw8ak076pky7a68gz2kz6rwqzyd9c83z95hh5jhif";
  };

  propagatedBuildInputs = [
    R6
    callr
    cli
    desc
    processx
  ];

  meta = {
    description = "R package pkgbuild";
    homepage = "https://cran.r-project.org/package=pkgbuild";
  };
}
