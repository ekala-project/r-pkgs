{
  buildRPackage,
  fetchurl,
  MASS,
  carData,
  kutils,
  lme4,
  reformulas,
}:

buildRPackage {
  pname = "rockchalk";
  version = "1.8.164";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rockchalk_1.8.164.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rockchalk/rockchalk_1.8.164.tar.gz"
    ];
    sha256 = "05jdbmaqfawi4khjwdqx35kk2ahqh6barm1znhibrikwxqg0g3jw";
  };

  propagatedBuildInputs = [
    MASS
    carData
    kutils
    lme4
    reformulas
  ];

  meta = {
    description = "R package rockchalk";
    homepage = "https://cran.r-project.org/package=rockchalk";
  };
}
