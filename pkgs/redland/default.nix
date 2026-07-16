{
  buildRPackage,
  fetchurl,
  roxygen2,
}:

buildRPackage {
  pname = "redland";
  version = "1.0.17-19";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/redland_1.0.17-19.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/redland/redland_1.0.17-19.tar.gz"
    ];
    sha256 = "0pdgjhy65bbwxivlz9qqb497dwrdmiw2igq8da16jy7gmnkzf1zx";
  };

  propagatedBuildInputs = [
    roxygen2
  ];

  meta = {
    description = "R package redland";
    homepage = "https://cran.r-project.org/package=redland";
  };
}
