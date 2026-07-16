{
  buildRPackage,
  fetchurl,
  cluster,
  sets,
  slam,
}:

buildRPackage {
  pname = "relations";
  version = "0.6-17";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/relations_0.6-17.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/relations/relations_0.6-17.tar.gz"
    ];
    sha256 = "04zm840100q0xxswpv6f2172aam6b03639bi9gzk14spxb0zwxjk";
  };

  propagatedBuildInputs = [
    cluster
    sets
    slam
  ];

  meta = {
    description = "R package relations";
    homepage = "https://cran.r-project.org/package=relations";
  };
}
