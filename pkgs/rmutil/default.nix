{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rmutil";
  version = "1.1.10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rmutil_1.1.10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rmutil/rmutil_1.1.10.tar.gz"
    ];
    sha256 = "1yd5gkg4jg3rvqrfl8c5r07lcr37n1p9h1a7b6s45iswd77dg7w1";
  };

  meta = {
    description = "R package rmutil";
    homepage = "https://cran.r-project.org/package=rmutil";
  };
}
