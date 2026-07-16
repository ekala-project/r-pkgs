{
  buildRPackage,
  fetchurl,
  proxy,
}:

buildRPackage {
  pname = "dtw";
  version = "1.23-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dtw_1.23-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dtw/dtw_1.23-2.tar.gz"
    ];
    sha256 = "1ngd08yqik2y3dah0nw7dq7bkg25d408kgbnbmjn1x4k0sjm947f";
  };

  propagatedBuildInputs = [
    proxy
  ];

  meta = {
    description = "R package dtw";
    homepage = "https://cran.r-project.org/package=dtw";
  };
}
