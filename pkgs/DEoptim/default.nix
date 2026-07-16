{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "DEoptim";
  version = "2.2-8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/DEoptim_2.2-8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/DEoptim/DEoptim_2.2-8.tar.gz"
    ];
    sha256 = "0k7mvf7j8y1sqv8zpiwkw4xcmgki37drkxjijrsmmhkfybfan7k3";
  };

  meta = {
    description = "R package DEoptim";
    homepage = "https://cran.r-project.org/package=DEoptim";
  };
}
