{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "parmigene";
  version = "1.1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/parmigene_1.1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/parmigene/parmigene_1.1.1.tar.gz"
    ];
    sha256 = "03n93x8qsc4cl5a3d2z3q56rm2zs7xnpn9iqli25g3plv69hp0kk";
  };

  meta = {
    description = "R package parmigene";
    homepage = "https://cran.r-project.org/package=parmigene";
  };
}
