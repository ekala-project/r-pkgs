{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "fontLiberation";
  version = "0.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fontLiberation_0.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fontLiberation/fontLiberation_0.1.0.tar.gz"
    ];
    sha256 = "1w1rl0g4ayyp8lwppmz9yzj9cizg7i50g07216jkm1q5w0is9pmc";
  };

  meta = {
    description = "R package fontLiberation";
    homepage = "https://cran.r-project.org/package=fontLiberation";
  };
}
