{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "Rmpi";
  version = "0.7-3.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Rmpi_0.7-3.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Rmpi/Rmpi_0.7-3.4.tar.gz"
    ];
    sha256 = "0r6lb730ngp6a27bbq6cl79dxlc5nzfz7d2mg4rv7s318ysns28j";
  };

  meta = {
    description = "R package Rmpi";
    homepage = "https://cran.r-project.org/package=Rmpi";
  };
}
