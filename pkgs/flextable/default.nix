{
  buildRPackage,
  fetchurl,
  data_table,
  gdtools,
  htmltools,
  knitr,
  officer,
  ragg,
  rlang,
  rmarkdown,
  uuid,
  xml2,
}:

buildRPackage {
  pname = "flextable";
  version = "0.9.11";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/flextable_0.9.11.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/flextable/flextable_0.9.11.tar.gz"
    ];
    sha256 = "0q20dyk60kjq1cz77sgiw32sszz5a1mxwfn379qffq73p3kq294x";
  };

  propagatedBuildInputs = [
    data_table
    gdtools
    htmltools
    knitr
    officer
    ragg
    rlang
    rmarkdown
    uuid
    xml2
  ];

  meta = {
    description = "R package flextable";
    homepage = "https://cran.r-project.org/package=flextable";
  };
}
