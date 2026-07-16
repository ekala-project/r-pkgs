{
  buildRPackage,
  fetchurl,
  Matrix,
  abind,
  goftest,
  nlme,
  spatstat_data,
  spatstat_geom,
  spatstat_random,
  spatstat_sparse,
  spatstat_univar,
  spatstat_utils,
}:

buildRPackage {
  pname = "spatstat_explore";
  version = "3.8-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spatstat_explore_3.8-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spatstat_explore/spatstat_explore_3.8-1.tar.gz"
    ];
    sha256 = "03bxys12wg5gcn7rps2ycb9l0bqrll007r0icvqw1wk309zyr96x";
  };

  propagatedBuildInputs = [
    Matrix
    abind
    goftest
    nlme
    spatstat_data
    spatstat_geom
    spatstat_random
    spatstat_sparse
    spatstat_univar
    spatstat_utils
  ];

  meta = {
    description = "R package spatstat_explore";
    homepage = "https://cran.r-project.org/package=spatstat_explore";
  };
}
