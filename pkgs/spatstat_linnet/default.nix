{
  buildRPackage,
  fetchurl,
  Matrix,
  spatstat_data,
  spatstat_explore,
  spatstat_geom,
  spatstat_model,
  spatstat_random,
  spatstat_sparse,
  spatstat_univar,
  spatstat_utils,
}:

buildRPackage {
  pname = "spatstat_linnet";
  version = "3.5-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spatstat_linnet_3.5-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spatstat_linnet/spatstat_linnet_3.5-0.tar.gz"
    ];
    sha256 = "169737zf9mjgyj4f79h60h2cxz90qdqaawwb6f0jw2lznrdgx7qz";
  };

  propagatedBuildInputs = [
    Matrix
    spatstat_data
    spatstat_explore
    spatstat_geom
    spatstat_model
    spatstat_random
    spatstat_sparse
    spatstat_univar
    spatstat_utils
  ];

  meta = {
    description = "R package spatstat_linnet";
    homepage = "https://cran.r-project.org/package=spatstat_linnet";
  };
}
