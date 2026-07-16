{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "conf_design";
  version = "2.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/conf_design_2.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/conf_design/conf_design_2.0.0.tar.gz"
    ];
    sha256 = "06vdxljkjq1x56xkg041l271an1xv9wq79swxvzzk64dqqnmay51";
  };

  meta = {
    description = "R package conf_design";
    homepage = "https://cran.r-project.org/package=conf_design";
  };
}
