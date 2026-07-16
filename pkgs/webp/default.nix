{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "webp";
  version = "1.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/webp_1.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/webp/webp_1.3.0.tar.gz"
    ];
    sha256 = "0gm238kmn51r0z3yrg1i1w49r3gph6xqyb8w75r76agic6nv9p9s";
  };

  meta = {
    description = "R package webp";
    homepage = "https://cran.r-project.org/package=webp";
  };
}
