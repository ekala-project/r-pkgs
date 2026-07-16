{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "RProtoBuf";
  version = "0.4.27";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RProtoBuf_0.4.27.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RProtoBuf/RProtoBuf_0.4.27.tar.gz"
    ];
    sha256 = "0nrbka7zl6drb6dmpfs2h3m6p47wnwbbyc6cl65wv5rcfzjn7wak";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package RProtoBuf";
    homepage = "https://cran.r-project.org/package=RProtoBuf";
  };
}
