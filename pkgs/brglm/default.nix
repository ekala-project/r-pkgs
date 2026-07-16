{
  buildRPackage,
  fetchurl,
  profileModel,
}:

buildRPackage {
  pname = "brglm";
  version = "0.7.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/brglm_0.7.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/brglm/brglm_0.7.3.tar.gz"
    ];
    sha256 = "1p03x821dy5r82l53yqwk429hn8x4xjpwz1lgfqrs8bh8sq4kh0q";
  };

  propagatedBuildInputs = [
    profileModel
  ];

  meta = {
    description = "R package brglm";
    homepage = "https://cran.r-project.org/package=brglm";
  };
}
