{
  buildRPackage,
  fetchurl,
  formatR,
}:

buildRPackage {
  pname = "lambda_r";
  version = "1.2.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lambda_r_1.2.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lambda_r/lambda_r_1.2.4.tar.gz"
    ];
    sha256 = "1mh1g0gsd58gng0hb29vww2yqb2jfs07kba5kxnnqck5j3izwlnj";
  };

  propagatedBuildInputs = [
    formatR
  ];

  meta = {
    description = "R package lambda_r";
    homepage = "https://cran.r-project.org/package=lambda_r";
  };
}
