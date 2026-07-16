{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "commonmark";
  version = "2.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/commonmark_2.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/commonmark/commonmark_2.0.0.tar.gz"
    ];
    sha256 = "0139jfaal03099kdykcljypaznrd7linx7x6fcm1wpgzykwxfivz";
  };

  meta = {
    description = "R package commonmark";
    homepage = "https://cran.r-project.org/package=commonmark";
  };
}
