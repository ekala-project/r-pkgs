{
  buildRPackage,
  fetchurl,
  lifecycle,
  wk,
}:

buildRPackage {
  pname = "PROJ";
  version = "0.6.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/PROJ_0.6.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/PROJ/PROJ_0.6.0.tar.gz"
    ];
    sha256 = "13h91iqkbwwvkzgsn7blvzfk089faibk92p9anpp74rynb92asd6";
  };

  propagatedBuildInputs = [
    lifecycle
    wk
  ];

  meta = {
    description = "R package PROJ";
    homepage = "https://cran.r-project.org/package=PROJ";
  };
}
