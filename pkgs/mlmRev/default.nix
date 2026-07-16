{
  buildRPackage,
  fetchurl,
  lme4,
}:

buildRPackage {
  pname = "mlmRev";
  version = "1.0-9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mlmRev_1.0-9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mlmRev/mlmRev_1.0-9.tar.gz"
    ];
    sha256 = "0cpdmdblyz5jgxazb6dc13ddsm1rhyimxv3dxpv17wirvkq5m734";
  };

  propagatedBuildInputs = [
    lme4
  ];

  meta = {
    description = "R package mlmRev";
    homepage = "https://cran.r-project.org/package=mlmRev";
  };
}
