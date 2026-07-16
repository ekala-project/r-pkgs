{
  buildRPackage,
  fetchurl,
  BBmisc,
  checkmate,
}:

buildRPackage {
  pname = "fail";
  version = "1.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fail_1.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fail/fail_1.3.tar.gz"
    ];
    sha256 = "0vfm6kmpmgsamda5p0sl771kbnsscan31l2chzssyw93kwmams7d";
  };

  propagatedBuildInputs = [
    BBmisc
    checkmate
  ];

  meta = {
    description = "R package fail";
    homepage = "https://cran.r-project.org/package=fail";
  };
}
