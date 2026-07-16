{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "BiasedUrn";
  version = "2.0.12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/BiasedUrn_2.0.12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/BiasedUrn/BiasedUrn_2.0.12.tar.gz"
    ];
    sha256 = "14jpijms81pgl4zyqrhwwdfj0jmlmml21blspvin8lqw8fbbbcr9";
  };

  meta = {
    description = "R package BiasedUrn";
    homepage = "https://cran.r-project.org/package=BiasedUrn";
  };
}
