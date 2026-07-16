{
  buildRPackage,
  fetchurl,
  RcppSpdlog,
}:

buildRPackage {
  pname = "spdl";
  version = "0.0.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spdl_0.0.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spdl/spdl_0.0.5.tar.gz"
    ];
    sha256 = "185qzlwac7acq126xpvcd71nv25zgkrdr8m73gv2sn1zxj78hyid";
  };

  propagatedBuildInputs = [
    RcppSpdlog
  ];

  meta = {
    description = "R package spdl";
    homepage = "https://cran.r-project.org/package=spdl";
  };
}
