{
  buildRPackage,
  fetchurl,
  class,
}:

buildRPackage {
  pname = "mda";
  version = "0.5-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mda_0.5-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mda/mda_0.5-5.tar.gz"
    ];
    sha256 = "1kk28250mplv5dc12d2frp5wi19q4lf0sndlryiqnrsyqmxh8l9k";
  };

  propagatedBuildInputs = [
    class
  ];

  meta = {
    description = "R package mda";
    homepage = "https://cran.r-project.org/package=mda";
  };
}
