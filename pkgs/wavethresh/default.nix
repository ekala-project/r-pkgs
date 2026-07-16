{
  buildRPackage,
  fetchurl,
  MASS,
}:

buildRPackage {
  pname = "wavethresh";
  version = "4.7.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/wavethresh_4.7.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/wavethresh/wavethresh_4.7.3.tar.gz"
    ];
    sha256 = "133msy9bn32531n9z9wr9z6hccz5w8zczv0a5f2awkfbap8nlwn2";
  };

  propagatedBuildInputs = [
    MASS
  ];

  meta = {
    description = "R package wavethresh";
    homepage = "https://cran.r-project.org/package=wavethresh";
  };
}
