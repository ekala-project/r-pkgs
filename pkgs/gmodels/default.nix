{
  buildRPackage,
  fetchurl,
  MASS,
  gdata,
}:

buildRPackage {
  pname = "gmodels";
  version = "2.19.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gmodels_2.19.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gmodels/gmodels_2.19.1.tar.gz"
    ];
    sha256 = "13c8x7iwyz36qir3ikbvjb5dl6gdh4fh82qdxcpcdinwfhrbhmxv";
  };

  propagatedBuildInputs = [
    MASS
    gdata
  ];

  meta = {
    description = "R package gmodels";
    homepage = "https://cran.r-project.org/package=gmodels";
  };
}
