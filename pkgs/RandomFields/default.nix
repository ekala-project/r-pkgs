{
  buildRPackage,
  fetchurl,
  RandomFieldsUtils,
  sp,
}:

buildRPackage {
  pname = "RandomFields";
  version = "3.3.14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RandomFields_3.3.14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RandomFields/RandomFields_3.3.14.tar.gz"
    ];
    sha256 = "0c5r7l642cw56km56ijachnqhjh5k0izy03cl14rvbwkpywh09i4";
  };

  propagatedBuildInputs = [
    RandomFieldsUtils
    sp
  ];

  meta = {
    description = "R package RandomFields";
    homepage = "https://cran.r-project.org/package=RandomFields";
  };
}
