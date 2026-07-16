{
  buildRPackage,
  fetchurl,
  pracma,
}:

buildRPackage {
  pname = "poweRlaw";
  version = "1.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/poweRlaw_1.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/poweRlaw/poweRlaw_1.0.0.tar.gz"
    ];
    sha256 = "1pgwa8jw2886z1qj8iyi5wr8ydqinzka1j4pfbbg7vdgmdxq2yb4";
  };

  propagatedBuildInputs = [
    pracma
  ];

  meta = {
    description = "R package poweRlaw";
    homepage = "https://cran.r-project.org/package=poweRlaw";
  };
}
