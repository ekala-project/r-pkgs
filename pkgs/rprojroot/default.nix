{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rprojroot";
  version = "2.1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rprojroot_2.1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rprojroot/rprojroot_2.1.1.tar.gz"
    ];
    sha256 = "1s8p0mgg44chpbb5zdd4rvjjvx692ixk3p38izb9rza5xyxqjfa7";
  };

  meta = {
    description = "R package rprojroot";
    homepage = "https://cran.r-project.org/package=rprojroot";
  };
}
