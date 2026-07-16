{
  buildRPackage,
  fetchurl,
  R6,
}:

buildRPackage {
  pname = "CFtime";
  version = "1.7.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/CFtime_1.7.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/CFtime/CFtime_1.7.3.tar.gz"
    ];
    sha256 = "1aaln5i6xxkx6cqy1m7h1nsljag5qxhv42pi62hv67b84j5sxysr";
  };

  propagatedBuildInputs = [
    R6
  ];

  meta = {
    description = "R package CFtime";
    homepage = "https://cran.r-project.org/package=CFtime";
  };
}
