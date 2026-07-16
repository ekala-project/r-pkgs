{
  buildRPackage,
  fetchurl,
  ape,
}:

buildRPackage {
  pname = "pegas";
  version = "1.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pegas_1.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pegas/pegas_1.4.tar.gz"
    ];
    sha256 = "0wqnn1pjihfh84cq51d4kw4ip37gab5dg61lflhnrf7x1qjvw6n3";
  };

  propagatedBuildInputs = [
    ape
  ];

  meta = {
    description = "R package pegas";
    homepage = "https://cran.r-project.org/package=pegas";
  };
}
