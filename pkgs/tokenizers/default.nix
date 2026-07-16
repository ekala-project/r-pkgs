{
  buildRPackage,
  fetchurl,
  Rcpp,
  SnowballC,
  stringi,
}:

buildRPackage {
  pname = "tokenizers";
  version = "0.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tokenizers_0.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tokenizers/tokenizers_0.3.0.tar.gz"
    ];
    sha256 = "0a8wm4cff3hrll991h2rimw79kpf2jsn78y7yksdk8m18931wmr4";
  };

  propagatedBuildInputs = [
    Rcpp
    SnowballC
    stringi
  ];

  meta = {
    description = "R package tokenizers";
    homepage = "https://cran.r-project.org/package=tokenizers";
  };
}
