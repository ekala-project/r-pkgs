{
  buildRPackage,
  fetchurl,
  fresh,
  htmltools,
  lifecycle,
  shiny,
  shinydashboard,
  waiter,
}:

buildRPackage {
  pname = "shinydashboardPlus";
  version = "2.0.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shinydashboardPlus_2.0.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shinydashboardPlus/shinydashboardPlus_2.0.6.tar.gz"
    ];
    sha256 = "0f50861pzh7n2z0fsqmpmjb2cwgrjxik854cwcwbm6k310fxb096";
  };

  propagatedBuildInputs = [
    fresh
    htmltools
    lifecycle
    shiny
    shinydashboard
    waiter
  ];

  meta = {
    description = "R package shinydashboardPlus";
    homepage = "https://cran.r-project.org/package=shinydashboardPlus";
  };
}
