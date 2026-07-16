{
  buildRPackage,
  fetchurl,
  tibble,
}:

buildRPackage {
  pname = "nycflights13";
  version = "1.0.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/nycflights13_1.0.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/nycflights13/nycflights13_1.0.2.tar.gz"
    ];
    sha256 = "07aa76c77pm1wpzkwjmzv8n6ir5i6fxawx8wx586gwc5wajcb1qf";
  };

  propagatedBuildInputs = [
    tibble
  ];

  meta = {
    description = "R package nycflights13";
    homepage = "https://cran.r-project.org/package=nycflights13";
  };
}
