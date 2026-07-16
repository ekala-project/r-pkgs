{
  buildRPackage,
  fetchurl,
  datawizard,
  insight,
  reformulas,
}:

buildRPackage {
  pname = "ggeffects";
  version = "2.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggeffects_2.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggeffects/ggeffects_2.3.2.tar.gz"
    ];
    sha256 = "1j5avgbq8glsdal7xgskiwjhf8swakckv4rrvcz82kz4lfdgz1x3";
  };

  propagatedBuildInputs = [
    datawizard
    insight
    reformulas
  ];

  meta = {
    description = "R package ggeffects";
    homepage = "https://cran.r-project.org/package=ggeffects";
  };
}
