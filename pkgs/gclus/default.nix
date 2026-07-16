{
  buildRPackage,
  fetchurl,
  cluster,
}:

buildRPackage {
  pname = "gclus";
  version = "1.3.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gclus_1.3.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gclus/gclus_1.3.3.tar.gz"
    ];
    sha256 = "0542yv9gv93l41dsijkr19fpzhs42z6qhh00h13mqkwcc4d54s36";
  };

  propagatedBuildInputs = [
    cluster
  ];

  meta = {
    description = "R package gclus";
    homepage = "https://cran.r-project.org/package=gclus";
  };
}
