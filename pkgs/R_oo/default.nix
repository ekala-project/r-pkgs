{
  buildRPackage,
  fetchurl,
  R_methodsS3,
}:

buildRPackage {
  pname = "R_oo";
  version = "1.27.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/R_oo_1.27.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/R_oo/R_oo_1.27.1.tar.gz"
    ];
    sha256 = "1xbh8bcv6yiyy59pja78zvbcr7g28dmalw0j1swdh9zhq6f5kbsz";
  };

  propagatedBuildInputs = [
    R_methodsS3
  ];

  meta = {
    description = "R package R_oo";
    homepage = "https://cran.r-project.org/package=R_oo";
  };
}
