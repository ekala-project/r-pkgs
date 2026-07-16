{
  buildRPackage,
  fetchurl,
  datawizard,
  insight,
}:

buildRPackage {
  pname = "sjlabelled";
  version = "1.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sjlabelled_1.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sjlabelled/sjlabelled_1.2.0.tar.gz"
    ];
    sha256 = "1va86q5wddyvqgdpy8d0an2c7v1qbb4hpn0ai6y1v5v1ff87w73k";
  };

  propagatedBuildInputs = [
    datawizard
    insight
  ];

  meta = {
    description = "R package sjlabelled";
    homepage = "https://cran.r-project.org/package=sjlabelled";
  };
}
