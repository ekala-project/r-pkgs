{
  buildRPackage,
  fetchurl,
  cli,
  lifecycle,
  pkgconfig,
  rlang,
  vctrs,
}:

buildRPackage {
  pname = "hms";
  version = "1.1.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/hms_1.1.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/hms/hms_1.1.4.tar.gz"
    ];
    sha256 = "153vx24vxfbfdfvyzphyzjj5mawk4lhahvvcs103faxnjzvjbigg";
  };

  propagatedBuildInputs = [
    cli
    lifecycle
    pkgconfig
    rlang
    vctrs
  ];

  meta = {
    description = "R package hms";
    homepage = "https://cran.r-project.org/package=hms";
  };
}
