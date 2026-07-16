{
  buildRPackage,
  fetchurl,
  FNN,
  lattice,
  sf,
  sftime,
  sp,
  spacetime,
  stars,
  zoo,
}:

buildRPackage {
  pname = "gstat";
  version = "2.1-6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gstat_2.1-6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gstat/gstat_2.1-6.tar.gz"
    ];
    sha256 = "0ffxp2shqb0jni8zm02s3f1wivzgqdl9i3v0sps7g90gh14wh9zj";
  };

  propagatedBuildInputs = [
    FNN
    lattice
    sf
    sftime
    sp
    spacetime
    stars
    zoo
  ];

  meta = {
    description = "R package gstat";
    homepage = "https://cran.r-project.org/package=gstat";
  };
}
