{
  buildRPackage,
  fetchurl,
  admisc,
}:

buildRPackage {
  pname = "venn";
  version = "1.13";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/venn_1.13.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/venn/venn_1.13.tar.gz"
    ];
    sha256 = "17ifis5al6d13hy2ffbyi2f0rqhznwfs75w1fzs406bq9vzziaji";
  };

  propagatedBuildInputs = [
    admisc
  ];

  meta = {
    description = "R package venn";
    homepage = "https://cran.r-project.org/package=venn";
  };
}
