{
  buildRPackage,
  fetchurl,
  MASS,
  Matrix,
  biglm,
}:

buildRPackage {
  pname = "speedglm";
  version = "0.3-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/speedglm_0.3-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/speedglm/speedglm_0.3-5.tar.gz"
    ];
    sha256 = "0jxvh9gbhip1hj7hzjs5fj8iw6ibvl6hc0llcg2j9wqgq5vkcrpq";
  };

  propagatedBuildInputs = [
    MASS
    Matrix
    biglm
  ];

  meta = {
    description = "R package speedglm";
    homepage = "https://cran.r-project.org/package=speedglm";
  };
}
