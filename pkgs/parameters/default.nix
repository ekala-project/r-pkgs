{
  buildRPackage,
  fetchurl,
  bayestestR,
  datawizard,
  insight,
}:

buildRPackage {
  pname = "parameters";
  version = "0.29.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/parameters_0.29.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/parameters/parameters_0.29.1.tar.gz"
    ];
    sha256 = "0w1lcni0lvdqhg9rms6f3skzwirigylq1353ciffiqsyi1f0qr2z";
  };

  propagatedBuildInputs = [
    bayestestR
    datawizard
    insight
  ];

  meta = {
    description = "R package parameters";
    homepage = "https://cran.r-project.org/package=parameters";
  };
}
