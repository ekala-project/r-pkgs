{
  buildRPackage,
  fetchurl,
  BBmisc,
  backports,
  checkmate,
  fastmatch,
}:

buildRPackage {
  pname = "ParamHelpers";
  version = "1.14.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ParamHelpers_1.14.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ParamHelpers/ParamHelpers_1.14.2.tar.gz"
    ];
    sha256 = "0x938sblzzfn7m19xcc6v9z1cpqwg0xngshnyc4hph9gs6r5js5b";
  };

  propagatedBuildInputs = [
    BBmisc
    backports
    checkmate
    fastmatch
  ];

  meta = {
    description = "R package ParamHelpers";
    homepage = "https://cran.r-project.org/package=ParamHelpers";
  };
}
