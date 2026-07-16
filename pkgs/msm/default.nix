{
  buildRPackage,
  fetchurl,
  expm,
  generics,
  mvtnorm,
  survival,
  tibble,
}:

buildRPackage {
  pname = "msm";
  version = "1.8.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/msm_1.8.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/msm/msm_1.8.2.tar.gz"
    ];
    sha256 = "09my3vgj0d2w0g6dn0fh4clcqqh0xbyxp44nphap6kdmg0wkb5sv";
  };

  propagatedBuildInputs = [
    expm
    generics
    mvtnorm
    survival
    tibble
  ];

  meta = {
    description = "R package msm";
    homepage = "https://cran.r-project.org/package=msm";
  };
}
