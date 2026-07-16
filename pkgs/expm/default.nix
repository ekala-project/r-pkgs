{
  buildRPackage,
  fetchurl,
  Matrix,
}:

buildRPackage {
  pname = "expm";
  version = "1.0-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/expm_1.0-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/expm/expm_1.0-0.tar.gz"
    ];
    sha256 = "0m5jm92mjn83zvh4jz7rdf04jdaad7lv2l0a44rb2mdgyvw3di82";
  };

  propagatedBuildInputs = [
    Matrix
  ];

  meta = {
    description = "R package expm";
    homepage = "https://cran.r-project.org/package=expm";
  };
}
