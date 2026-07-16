{
  buildRPackage,
  fetchurl,
  deldir,
  polyclip,
  spatstat_data,
  spatstat_univar,
  spatstat_utils,
}:

buildRPackage {
  pname = "spatstat_geom";
  version = "3.8-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spatstat_geom_3.8-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spatstat_geom/spatstat_geom_3.8-1.tar.gz"
    ];
    sha256 = "1cs1g3nx5yhp4cgz53ib9n1nki4b2xkpgin4bc1n5ah6r1b5v8r8";
  };

  propagatedBuildInputs = [
    deldir
    polyclip
    spatstat_data
    spatstat_univar
    spatstat_utils
  ];

  meta = {
    description = "R package spatstat_geom";
    homepage = "https://cran.r-project.org/package=spatstat_geom";
  };
}
