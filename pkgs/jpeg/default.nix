{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "jpeg";
  version = "0.1-11";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/jpeg_0.1-11.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/jpeg/jpeg_0.1-11.tar.gz"
    ];
    sha256 = "0a9pn0rshqx1r9kqkg1n4m1i98plfdaj2h0y8055kk7v92yyyf91";
  };

  meta = {
    description = "R package jpeg";
    homepage = "https://cran.r-project.org/package=jpeg";
  };
}
