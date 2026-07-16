{
  buildRPackage,
  fetchurl,
  tibble,
}:

buildRPackage {
  pname = "gapminder";
  version = "1.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gapminder_1.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gapminder/gapminder_1.0.1.tar.gz"
    ];
    sha256 = "07rm3918n1wqs3n9s0rjpnlrhgizf7cxp04m3z22mw6gdxbkilgd";
  };

  propagatedBuildInputs = [
    tibble
  ];

  meta = {
    description = "R package gapminder";
    homepage = "https://cran.r-project.org/package=gapminder";
  };
}
