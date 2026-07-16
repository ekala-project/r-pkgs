{
  buildRPackage,
  fetchurl,
  class,
  lattice,
  modeltools,
}:

buildRPackage {
  pname = "flexclust";
  version = "1.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/flexclust_1.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/flexclust/flexclust_1.5.0.tar.gz"
    ];
    sha256 = "18sz94pvsnnx8nhr08q04p3gzls9grdvbrnv1hqlsnwb6cn5zyzh";
  };

  propagatedBuildInputs = [
    class
    lattice
    modeltools
  ];

  meta = {
    description = "R package flexclust";
    homepage = "https://cran.r-project.org/package=flexclust";
  };
}
