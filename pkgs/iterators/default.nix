{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "iterators";
  version = "1.0.14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/iterators_1.0.14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/iterators/iterators_1.0.14.tar.gz"
    ];
    sha256 = "0yv7rh6ghlfx727xy2aq64a7skyxp9msakaffs641q9h15d0gwyf";
  };

  meta = {
    description = "R package iterators";
    homepage = "https://cran.r-project.org/package=iterators";
  };
}
