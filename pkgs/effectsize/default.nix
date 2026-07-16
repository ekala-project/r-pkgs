{
  buildRPackage,
  fetchurl,
  bayestestR,
  datawizard,
  insight,
  parameters,
  performance,
}:

buildRPackage {
  pname = "effectsize";
  version = "1.0.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/effectsize_1.0.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/effectsize/effectsize_1.0.2.tar.gz"
    ];
    sha256 = "0m74gl3wl0600hx3rg87ay4xhg1wsw584xa408jc9nh8pz4vzabq";
  };

  propagatedBuildInputs = [
    bayestestR
    datawizard
    insight
    parameters
    performance
  ];

  meta = {
    description = "R package effectsize";
    homepage = "https://cran.r-project.org/package=effectsize";
  };
}
