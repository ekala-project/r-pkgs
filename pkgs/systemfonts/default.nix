{
  buildRPackage,
  fetchurl,
  base64enc,
  cpp11,
  jsonlite,
  lifecycle,
}:

buildRPackage {
  pname = "systemfonts";
  version = "1.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/systemfonts_1.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/systemfonts/systemfonts_1.3.2.tar.gz"
    ];
    sha256 = "0dfi7msszaqxb51jpn6ny6pfhzbjqvxdv8fhgh80bga0wn01g2l2";
  };

  propagatedBuildInputs = [
    base64enc
    cpp11
    jsonlite
    lifecycle
  ];

  meta = {
    description = "R package systemfonts";
    homepage = "https://cran.r-project.org/package=systemfonts";
  };
}
