{
  buildRPackage,
  fetchurl,
  exactRankTests,
  mvtnorm,
}:

buildRPackage {
  pname = "maxstat";
  version = "0.7-26";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/maxstat_0.7-26.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/maxstat/maxstat_0.7-26.tar.gz"
    ];
    sha256 = "02wbq8gkiw0jb5d86v9zsjh506mszbh20ycm7fds1v730fxw4n74";
  };

  propagatedBuildInputs = [
    exactRankTests
    mvtnorm
  ];

  meta = {
    description = "R package maxstat";
    homepage = "https://cran.r-project.org/package=maxstat";
  };
}
