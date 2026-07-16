{
  buildRPackage,
  fetchurl,
  datawizard,
  insight,
}:

buildRPackage {
  pname = "bayestestR";
  version = "0.18.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bayestestR_0.18.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bayestestR/bayestestR_0.18.1.tar.gz"
    ];
    sha256 = "1zcbppwlzbibyjv4n4vx8c3k6hqk05bdl46fai3zslv8g5a9asfy";
  };

  propagatedBuildInputs = [
    datawizard
    insight
  ];

  meta = {
    description = "R package bayestestR";
    homepage = "https://cran.r-project.org/package=bayestestR";
  };
}
