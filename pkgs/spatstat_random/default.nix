{
  buildRPackage,
  fetchurl,
  Matrix,
  spatstat_data,
  spatstat_geom,
  spatstat_sparse,
  spatstat_univar,
  spatstat_utils,
}:

buildRPackage {
  pname = "spatstat_random";
  version = "3.5-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spatstat_random_3.5-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spatstat_random/spatstat_random_3.5-0.tar.gz"
    ];
    sha256 = "1k8y1pxf2f7h06akyia0my4q4ici4q5rmh89vj1k0n345ca0x0xk";
  };

  propagatedBuildInputs = [
    Matrix
    spatstat_data
    spatstat_geom
    spatstat_sparse
    spatstat_univar
    spatstat_utils
  ];

  meta = {
    description = "R package spatstat_random";
    homepage = "https://cran.r-project.org/package=spatstat_random";
  };
}
