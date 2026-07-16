{
  buildRPackage,
  fetchurl,
  htmltools,
}:

buildRPackage {
  pname = "jquerylib";
  version = "0.1.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/jquerylib_0.1.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/jquerylib/jquerylib_0.1.4.tar.gz"
    ];
    sha256 = "04a40v4znpj98j7y6009d74a6g9dchj5rr3p08cgz9p3rlfw3g7h";
  };

  propagatedBuildInputs = [
    htmltools
  ];

  meta = {
    description = "R package jquerylib";
    homepage = "https://cran.r-project.org/package=jquerylib";
  };
}
