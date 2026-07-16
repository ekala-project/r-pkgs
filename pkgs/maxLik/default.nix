{
  buildRPackage,
  fetchurl,
  generics,
  miscTools,
  sandwich,
}:

buildRPackage {
  pname = "maxLik";
  version = "1.5-2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/maxLik_1.5-2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/maxLik/maxLik_1.5-2.2.tar.gz"
    ];
    sha256 = "06kcddhwih4yjyczfpssg5hliqxfafcwsf5ilzkdf67qhncxqk2m";
  };

  propagatedBuildInputs = [
    generics
    miscTools
    sandwich
  ];

  meta = {
    description = "R package maxLik";
    homepage = "https://cran.r-project.org/package=maxLik";
  };
}
