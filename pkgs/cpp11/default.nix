{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "cpp11";
  version = "0.5.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cpp11_0.5.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cpp11/cpp11_0.5.5.tar.gz"
    ];
    sha256 = "1x32biqcgx32dw8s72fkkg08vbr4c99ws8nlyfdj5h850vmnnj3j";
  };

  meta = {
    description = "R package cpp11";
    homepage = "https://cran.r-project.org/package=cpp11";
  };
}
