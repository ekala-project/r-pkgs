{
  buildRPackage,
  fetchurl,
  snow,
}:

buildRPackage {
  pname = "snowfall";
  version = "1.84-6.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/snowfall_1.84-6.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/snowfall/snowfall_1.84-6.3.tar.gz"
    ];
    sha256 = "0hxip3rzv7slxvif1000avbcid2mjxj1y9mimyvk87h404mr6h96";
  };

  propagatedBuildInputs = [
    snow
  ];

  meta = {
    description = "R package snowfall";
    homepage = "https://cran.r-project.org/package=snowfall";
  };
}
