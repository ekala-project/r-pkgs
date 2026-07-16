{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "writexl";
  version = "1.5.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/writexl_1.5.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/writexl/writexl_1.5.4.tar.gz"
    ];
    sha256 = "1lv0fr333scllranvqi1agv3c071qqiwvishbxw7ig92x8lllmyh";
  };

  meta = {
    description = "R package writexl";
    homepage = "https://cran.r-project.org/package=writexl";
  };
}
