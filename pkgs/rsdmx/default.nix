{
  buildRPackage,
  fetchurl,
  R6,
  XML,
  httr,
  plyr,
}:

buildRPackage {
  pname = "rsdmx";
  version = "0.6-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rsdmx_0.6-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rsdmx/rsdmx_0.6-5.tar.gz"
    ];
    sha256 = "1cyc4riy4r736d96946qjzfqf28dmgabqlgxql252mwfa4z83dsb";
  };

  propagatedBuildInputs = [
    R6
    XML
    httr
    plyr
  ];

  meta = {
    description = "R package rsdmx";
    homepage = "https://cran.r-project.org/package=rsdmx";
  };
}
