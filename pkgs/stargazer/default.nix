{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "stargazer";
  version = "5.2.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/stargazer_5.2.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/stargazer/stargazer_5.2.3.tar.gz"
    ];
    sha256 = "0ra284jxjb1n6sd3114zf5l5pjrb7m7j073k8bhnrx8wl549p3i0";
  };

  meta = {
    description = "R package stargazer";
    homepage = "https://cran.r-project.org/package=stargazer";
  };
}
