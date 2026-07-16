{
  buildRPackage,
  fetchurl,
  MASS,
  survival,
}:

buildRPackage {
  pname = "TH_data";
  version = "1.1-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/TH_data_1.1-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/TH_data/TH_data_1.1-5.tar.gz"
    ];
    sha256 = "0q16iq9mh2gd3v5g09j0jbza4dqs0w510k77dv4ycx666h53bp64";
  };

  propagatedBuildInputs = [
    MASS
    survival
  ];

  meta = {
    description = "R package TH_data";
    homepage = "https://cran.r-project.org/package=TH_data";
  };
}
