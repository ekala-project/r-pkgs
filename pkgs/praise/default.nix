{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "praise";
  version = "1.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/praise_1.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/praise/praise_1.0.0.tar.gz"
    ];
    sha256 = "1gfyypnvmih97p2r0php9qa39grzqpsdbq5g0fdsbpq5zms5w0sw";
  };

  meta = {
    description = "R package praise";
    homepage = "https://cran.r-project.org/package=praise";
  };
}
