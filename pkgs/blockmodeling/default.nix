{
  buildRPackage,
  fetchurl,
  Matrix,
}:

buildRPackage {
  pname = "blockmodeling";
  version = "1.1.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/blockmodeling_1.1.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/blockmodeling/blockmodeling_1.1.8.tar.gz"
    ];
    sha256 = "15xlxvlbx5cis37v7078h3djxwsd48fi33855lf4xwshl9d60r1i";
  };

  propagatedBuildInputs = [
    Matrix
  ];

  meta = {
    description = "R package blockmodeling";
    homepage = "https://cran.r-project.org/package=blockmodeling";
  };
}
