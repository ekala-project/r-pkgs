{
  buildRPackage,
  fetchurl,
  RCurl,
  plyr,
}:

buildRPackage {
  pname = "gProfileR";
  version = "0.7.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gProfileR_0.7.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gProfileR/gProfileR_0.7.0.tar.gz"
    ];
    sha256 = "1h1v0kgpsn04ald2izznh7fr2riwisj5hcgz4k7h3qc931rf0r4k";
  };

  propagatedBuildInputs = [
    RCurl
    plyr
  ];

  meta = {
    description = "R package gProfileR";
    homepage = "https://cran.r-project.org/package=gProfileR";
  };
}
