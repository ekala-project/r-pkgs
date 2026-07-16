{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "R2HTML";
  version = "2.3.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/R2HTML_2.3.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/R2HTML/R2HTML_2.3.4.tar.gz"
    ];
    sha256 = "1a8yy9xf5gdh3s2rzmv5b28hhdqc5g34hygcrxn8drs0i2j97vdr";
  };

  meta = {
    description = "R package R2HTML";
    homepage = "https://cran.r-project.org/package=R2HTML";
  };
}
