{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "fansi";
  version = "1.0.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fansi_1.0.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fansi/fansi_1.0.7.tar.gz"
    ];
    sha256 = "14mp9vmbff1q67mgq6912fs4nr6bqaaln084r0qisp7b783kz91j";
  };

  meta = {
    description = "R package fansi";
    homepage = "https://cran.r-project.org/package=fansi";
  };
}
