{
  buildRPackage,
  fetchurl,
  survival,
}:

buildRPackage {
  pname = "cmprsk";
  version = "2.2-12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cmprsk_2.2-12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cmprsk/cmprsk_2.2-12.tar.gz"
    ];
    sha256 = "1p5c0i8prz88pgzb5dwpajlrxa0d72019sp9vysppb0fps9wngkp";
  };

  propagatedBuildInputs = [
    survival
  ];

  meta = {
    description = "R package cmprsk";
    homepage = "https://cran.r-project.org/package=cmprsk";
  };
}
