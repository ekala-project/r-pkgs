{
  buildRPackage,
  fetchurl,
  R6,
  htmltools,
  shiny,
}:

buildRPackage {
  pname = "waiter";
  version = "0.2.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/waiter_0.2.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/waiter/waiter_0.2.5.1.tar.gz"
    ];
    sha256 = "1m20s811qxwm086jnyf3nsc49wdisdv175ah1i7mhl205a64q4bv";
  };

  propagatedBuildInputs = [
    R6
    htmltools
    shiny
  ];

  meta = {
    description = "R package waiter";
    homepage = "https://cran.r-project.org/package=waiter";
  };
}
