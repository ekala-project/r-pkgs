{
  buildRPackage,
  fetchurl,
  withr,
}:

buildRPackage {
  pname = "rex";
  version = "1.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rex_1.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rex/rex_1.2.2.tar.gz"
    ];
    sha256 = "0j7fqa35rz9l78w8dv9g9k17g6nndizimrr8wn5061smqjdnysjw";
  };

  propagatedBuildInputs = [
    withr
  ];

  meta = {
    description = "R package rex";
    homepage = "https://cran.r-project.org/package=rex";
  };
}
