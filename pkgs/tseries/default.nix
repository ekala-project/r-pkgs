{
  buildRPackage,
  fetchurl,
  jsonlite,
  quadprog,
  quantmod,
  zoo,
}:

buildRPackage {
  pname = "tseries";
  version = "0.10-61";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tseries_0.10-61.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tseries/tseries_0.10-61.tar.gz"
    ];
    sha256 = "1r68gdiv0ian6dh0w2xxrb1d170akq13n8z33r04001kh4irkykm";
  };

  propagatedBuildInputs = [
    jsonlite
    quadprog
    quantmod
    zoo
  ];

  meta = {
    description = "R package tseries";
    homepage = "https://cran.r-project.org/package=tseries";
  };
}
