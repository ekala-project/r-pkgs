{
  buildRPackage,
  fetchurl,
  cluster,
}:

buildRPackage {
  pname = "RPMM";
  version = "1.25";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RPMM_1.25.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RPMM/RPMM_1.25.tar.gz"
    ];
    sha256 = "1j48dh434wfhfzka0l21w6f73qlwfm70r9gdddhn504i2d5m4jph";
  };

  propagatedBuildInputs = [
    cluster
  ];

  meta = {
    description = "R package RPMM";
    homepage = "https://cran.r-project.org/package=RPMM";
  };
}
