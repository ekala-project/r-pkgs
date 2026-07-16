{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "jsonlite";
  version = "2.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/jsonlite_2.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/jsonlite/jsonlite_2.0.0.tar.gz"
    ];
    sha256 = "0bf87agviacnk2ff6jif4d61bzvvz2h9sxwly0ryql5kh8693svm";
  };

  meta = {
    description = "R package jsonlite";
    homepage = "https://cran.r-project.org/package=jsonlite";
  };
}
