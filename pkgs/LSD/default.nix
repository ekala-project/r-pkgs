{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "LSD";
  version = "4.1-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/LSD_4.1-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/LSD/LSD_4.1-0.tar.gz"
    ];
    sha256 = "17pbdlcbhzf3v7l42mjikln1ga5xjp5r78gjg6a88iahk0lwwlvm";
  };

  meta = {
    description = "R package LSD";
    homepage = "https://cran.r-project.org/package=LSD";
  };
}
