{
  buildRPackage,
  fetchurl,
  MASS,
  gss,
  spatial,
  stabledist,
  timeDate,
  timeSeries,
}:

buildRPackage {
  pname = "fBasics";
  version = "4052.98";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fBasics_4052.98.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fBasics/fBasics_4052.98.tar.gz"
    ];
    sha256 = "1p8f45jc54593i80rn1klwa1rxhn8h50l3wd1j7q6r69rwchpbyj";
  };

  propagatedBuildInputs = [
    MASS
    gss
    spatial
    stabledist
    timeDate
    timeSeries
  ];

  meta = {
    description = "R package fBasics";
    homepage = "https://cran.r-project.org/package=fBasics";
  };
}
