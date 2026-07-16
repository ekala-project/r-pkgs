{
  buildRPackage,
  fetchurl,
  MASS,
  scatterplot3d,
}:

buildRPackage {
  pname = "poLCA";
  version = "1.6.0.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/poLCA_1.6.0.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/poLCA/poLCA_1.6.0.2.tar.gz"
    ];
    sha256 = "0n73jz0jii9agv2dkqf5w1jzhhxsdxps7fmjyzwpkas1dk4yk253";
  };

  propagatedBuildInputs = [
    MASS
    scatterplot3d
  ];

  meta = {
    description = "R package poLCA";
    homepage = "https://cran.r-project.org/package=poLCA";
  };
}
