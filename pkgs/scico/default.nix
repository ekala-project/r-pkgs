{
  buildRPackage,
  fetchurl,
  scales,
}:

buildRPackage {
  pname = "scico";
  version = "1.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/scico_1.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/scico/scico_1.5.0.tar.gz"
    ];
    sha256 = "1c6905y62s03kiah8ykhkag275pn06ihk5szldib2621ysrj2wb4";
  };

  propagatedBuildInputs = [
    scales
  ];

  meta = {
    description = "R package scico";
    homepage = "https://cran.r-project.org/package=scico";
  };
}
