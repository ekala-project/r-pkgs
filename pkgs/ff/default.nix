{
  buildRPackage,
  fetchurl,
  bit,
}:

buildRPackage {
  pname = "ff";
  version = "4.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ff_4.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ff/ff_4.5.2.tar.gz"
    ];
    sha256 = "0b1mqs98vqr67zxnf36vhzk9frd9ndq9ajsvv0z5zc67ziygal85";
  };

  propagatedBuildInputs = [
    bit
  ];

  meta = {
    description = "R package ff";
    homepage = "https://cran.r-project.org/package=ff";
  };
}
