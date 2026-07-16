{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "viridisLite";
  version = "0.4.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/viridisLite_0.4.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/viridisLite/viridisLite_0.4.3.tar.gz"
    ];
    sha256 = "1x8y29g0dh1gxzc4hiagq6svlx7wr6xzzd0z61vdqd32wsyyjfs3";
  };

  meta = {
    description = "R package viridisLite";
    homepage = "https://cran.r-project.org/package=viridisLite";
  };
}
