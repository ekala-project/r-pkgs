{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "truncnorm";
  version = "1.0-9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/truncnorm_1.0-9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/truncnorm/truncnorm_1.0-9.tar.gz"
    ];
    sha256 = "0267gvcg6mmf28x26z6njw373prwpaq8aqkd6aavyhrjsv2aqmji";
  };

  meta = {
    description = "R package truncnorm";
    homepage = "https://cran.r-project.org/package=truncnorm";
  };
}
