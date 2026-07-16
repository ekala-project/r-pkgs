{
  buildRPackage,
  fetchurl,
  backports,
}:

buildRPackage {
  pname = "bibtex";
  version = "0.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bibtex_0.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bibtex/bibtex_0.5.2.tar.gz"
    ];
    sha256 = "07x9lbn02c0xp4chpplihy5hkaq6hb30gqv7r84h303hhdq0kqx8";
  };

  propagatedBuildInputs = [
    backports
  ];

  meta = {
    description = "R package bibtex";
    homepage = "https://cran.r-project.org/package=bibtex";
  };
}
