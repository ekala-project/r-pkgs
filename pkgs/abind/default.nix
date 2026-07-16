{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "abind";
  version = "1.4-8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/abind_1.4-8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/abind/abind_1.4-8.tar.gz"
    ];
    sha256 = "1q934vfyvszmy6nv13dchv2mbsj9i5vffy88b9wy3siwa8dhaji6";
  };

  meta = {
    description = "R package abind";
    homepage = "https://cran.r-project.org/package=abind";
  };
}
