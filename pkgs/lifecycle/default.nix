{
  buildRPackage,
  fetchurl,
  cli,
  rlang,
}:

buildRPackage {
  pname = "lifecycle";
  version = "1.0.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lifecycle_1.0.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lifecycle/lifecycle_1.0.5.tar.gz"
    ];
    sha256 = "1vpq2sslm9651spz419wrgcxbf4ad7bg38smhfl5d86vdqz1x131";
  };

  propagatedBuildInputs = [
    cli
    rlang
  ];

  meta = {
    description = "R package lifecycle";
    homepage = "https://cran.r-project.org/package=lifecycle";
  };
}
