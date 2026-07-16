{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "otel";
  version = "0.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/otel_0.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/otel/otel_0.2.0.tar.gz"
    ];
    sha256 = "05yxv2yafgp4bsigp7v2mkwa2j7kkrlk8hd8p2z4n1y83ddgx2pg";
  };

  meta = {
    description = "R package otel";
    homepage = "https://cran.r-project.org/package=otel";
  };
}
