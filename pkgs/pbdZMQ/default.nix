{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "pbdZMQ";
  version = "0.3-14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pbdZMQ_0.3-14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pbdZMQ/pbdZMQ_0.3-14.tar.gz"
    ];
    sha256 = "08rjnbp7wg00ffyc3am907c6pb3l5vhc5j1rgifnay4kvdk4y5b0";
  };

  meta = {
    description = "R package pbdZMQ";
    homepage = "https://cran.r-project.org/package=pbdZMQ";
  };
}
