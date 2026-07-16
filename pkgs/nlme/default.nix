{
  buildRPackage,
  fetchurl,
  lattice,
}:

buildRPackage {
  pname = "nlme";
  version = "3.1-169";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/nlme_3.1-169.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/nlme/nlme_3.1-169.tar.gz"
    ];
    sha256 = "1f7xwyhb6gln966i6q51flb4w2d90nmmv5kqaj8vabixahdjzfai";
  };

  propagatedBuildInputs = [
    lattice
  ];

  meta = {
    description = "R package nlme";
    homepage = "https://cran.r-project.org/package=nlme";
  };
}
