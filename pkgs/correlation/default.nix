{
  buildRPackage,
  fetchurl,
  bayestestR,
  datawizard,
  insight,
  parameters,
}:

buildRPackage {
  pname = "correlation";
  version = "0.8.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/correlation_0.8.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/correlation/correlation_0.8.8.tar.gz"
    ];
    sha256 = "1m5acyw6g3brgw8pfn4aaklx2rwgzf0pxsrg6qd99d8h4cnw9jq0";
  };

  propagatedBuildInputs = [
    bayestestR
    datawizard
    insight
    parameters
  ];

  meta = {
    description = "R package correlation";
    homepage = "https://cran.r-project.org/package=correlation";
  };
}
