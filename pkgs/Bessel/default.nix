{
  buildRPackage,
  fetchurl,
  Rmpfr,
}:

buildRPackage {
  pname = "Bessel";
  version = "0.7-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Bessel_0.7-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Bessel/Bessel_0.7-0.tar.gz"
    ];
    sha256 = "0fyv5w953f0w14cnhnmjzxwbnr4f43cjr9vh1cwi2zcn61aiyklf";
  };

  propagatedBuildInputs = [
    Rmpfr
  ];

  meta = {
    description = "R package Bessel";
    homepage = "https://cran.r-project.org/package=Bessel";
  };
}
