{
  buildRPackage,
  fetchurl,
  stringr,
}:

buildRPackage {
  pname = "ISOweek";
  version = "0.6-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ISOweek_0.6-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ISOweek/ISOweek_0.6-2.tar.gz"
    ];
    sha256 = "1f1h8pgjaa14cvaj8ldl87b4vslxwvyfj46m0hkylwp73sv3g2mm";
  };

  propagatedBuildInputs = [
    stringr
  ];

  meta = {
    description = "R package ISOweek";
    homepage = "https://cran.r-project.org/package=ISOweek";
  };
}
