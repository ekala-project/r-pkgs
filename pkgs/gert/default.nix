{
  buildRPackage,
  fetchurl,
  askpass,
  credentials,
  openssl,
  rstudioapi,
  sys,
  zip,
}:

buildRPackage {
  pname = "gert";
  version = "2.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gert_2.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gert/gert_2.3.1.tar.gz"
    ];
    sha256 = "0ifqjh6bx95zfgwdwnfrv5b3ccfskfwf9wxs57n9hqc208x0aalb";
  };

  propagatedBuildInputs = [
    askpass
    credentials
    openssl
    rstudioapi
    sys
    zip
  ];

  meta = {
    description = "R package gert";
    homepage = "https://cran.r-project.org/package=gert";
  };
}
