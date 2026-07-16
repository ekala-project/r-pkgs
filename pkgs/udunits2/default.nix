{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "udunits2";
  version = "0.13.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/udunits2_0.13.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/udunits2/udunits2_0.13.2.2.tar.gz"
    ];
    sha256 = "0nq49px1f2n5vm4il2vd21x5vdvcpnnq884qgzks6pqm5jhw8v9y";
  };

  meta = {
    description = "R package udunits2";
    homepage = "https://cran.r-project.org/package=udunits2";
  };
}
