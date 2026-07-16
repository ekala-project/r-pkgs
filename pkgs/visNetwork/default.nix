{
  buildRPackage,
  fetchurl,
  htmltools,
  htmlwidgets,
  jsonlite,
  magrittr,
}:

buildRPackage {
  pname = "visNetwork";
  version = "2.1.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/visNetwork_2.1.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/visNetwork/visNetwork_2.1.4.tar.gz"
    ];
    sha256 = "1nk3i41n7bsan5q1ya6sj2v1j991vvii1rapai7l426qinc98ds8";
  };

  propagatedBuildInputs = [
    htmltools
    htmlwidgets
    jsonlite
    magrittr
  ];

  meta = {
    description = "R package visNetwork";
    homepage = "https://cran.r-project.org/package=visNetwork";
  };
}
