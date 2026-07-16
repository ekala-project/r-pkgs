{
  buildRPackage,
  fetchurl,
  digest,
  globals,
  listenv,
  parallelly,
}:

buildRPackage {
  pname = "future";
  version = "1.70.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/future_1.70.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/future/future_1.70.0.tar.gz"
    ];
    sha256 = "05whk6z99dhrp1jyjm9qaf1yr4m8v0q1jqga064rybpc15lhah81";
  };

  propagatedBuildInputs = [
    digest
    globals
    listenv
    parallelly
  ];

  meta = {
    description = "R package future";
    homepage = "https://cran.r-project.org/package=future";
  };
}
