{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "RApiSerialize";
  version = "0.1.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RApiSerialize_0.1.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RApiSerialize/RApiSerialize_0.1.4.tar.gz"
    ];
    sha256 = "1jb31laigm6zbjr5l10xdfriblsz3yv0n09y4lbs34qglyn79f96";
  };

  meta = {
    description = "R package RApiSerialize";
    homepage = "https://cran.r-project.org/package=RApiSerialize";
  };
}
