{
  buildRPackage,
  fetchurl,
  Matrix,
  abind,
  goftest,
  mgcv,
  nlme,
  rpart,
  spatstat_data,
  spatstat_explore,
  spatstat_geom,
  spatstat_random,
  spatstat_sparse,
  spatstat_univar,
  spatstat_utils,
  tensor,
}:

buildRPackage {
  pname = "spatstat_model";
  version = "3.7-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spatstat_model_3.7-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spatstat_model/spatstat_model_3.7-0.tar.gz"
    ];
    sha256 = "179c48q5kmcwi3dd0k2c63i4j1ajyy3gg3dh577nfwv5bdmp2sgr";
  };

  propagatedBuildInputs = [
    Matrix
    abind
    goftest
    mgcv
    nlme
    rpart
    spatstat_data
    spatstat_explore
    spatstat_geom
    spatstat_random
    spatstat_sparse
    spatstat_univar
    spatstat_utils
    tensor
  ];

  meta = {
    description = "R package spatstat_model";
    homepage = "https://cran.r-project.org/package=spatstat_model";
  };
}
