{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "gmp";
  version = "0.7-5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gmp_0.7-5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gmp/gmp_0.7-5.1.tar.gz"
    ];
    sha256 = "0sfv7fg7vkmrkmlg3ap5fqxh7xcnxqz5vnjamj5i996p7wvxhmkf";
  };

  meta = {
    description = "R package gmp";
    homepage = "https://cran.r-project.org/package=gmp";
  };
}
