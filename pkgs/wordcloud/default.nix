{
  buildRPackage,
  fetchurl,
  RColorBrewer,
  Rcpp,
}:

buildRPackage {
  pname = "wordcloud";
  version = "2.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/wordcloud_2.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/wordcloud/wordcloud_2.6.tar.gz"
    ];
    sha256 = "0j96yyvm6bcrrpbdx4w26piqx44a0vbsr3px9cb4zk8a8da6jwak";
  };

  propagatedBuildInputs = [
    RColorBrewer
    Rcpp
  ];

  meta = {
    description = "R package wordcloud";
    homepage = "https://cran.r-project.org/package=wordcloud";
  };
}
