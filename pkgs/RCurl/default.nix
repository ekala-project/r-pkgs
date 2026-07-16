{
  buildRPackage,
  fetchurl,
  bitops,
}:

buildRPackage {
  pname = "RCurl";
  version = "1.98-1.18";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RCurl_1.98-1.18.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RCurl/RCurl_1.98-1.18.tar.gz"
    ];
    sha256 = "0s6vxg26izfjly8jrd4xyvjk629riladlpwpk10s7ydq95x9wjsw";
  };

  propagatedBuildInputs = [
    bitops
  ];

  meta = {
    description = "R package RCurl";
    homepage = "https://cran.r-project.org/package=RCurl";
  };
}
