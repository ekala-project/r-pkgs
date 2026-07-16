{
  buildRPackage,
  fetchurl,
  stringi,
  stringr,
}:

buildRPackage {
  pname = "snakecase";
  version = "0.11.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/snakecase_0.11.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/snakecase/snakecase_0.11.1.tar.gz"
    ];
    sha256 = "0888fng8zwm2zmi7rap9hc2q2x2gnhz8gyr35wwjx93w6f8rfpra";
  };

  propagatedBuildInputs = [
    stringi
    stringr
  ];

  meta = {
    description = "R package snakecase";
    homepage = "https://cran.r-project.org/package=snakecase";
  };
}
