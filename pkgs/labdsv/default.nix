{
  buildRPackage,
  fetchurl,
  MASS,
  Rtsne,
  cluster,
  mgcv,
}:

buildRPackage {
  pname = "labdsv";
  version = "2.3-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/labdsv_2.3-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/labdsv/labdsv_2.3-1.tar.gz"
    ];
    sha256 = "1zyz8nxmxc2i4wzfrmclbc23rkm6gy0h489jax7iy1h6jhz0m272";
  };

  propagatedBuildInputs = [
    MASS
    Rtsne
    cluster
    mgcv
  ];

  meta = {
    description = "R package labdsv";
    homepage = "https://cran.r-project.org/package=labdsv";
  };
}
