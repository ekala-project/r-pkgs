{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "GSA";
  version = "1.03.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/GSA_1.03.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/GSA/GSA_1.03.3.tar.gz"
    ];
    sha256 = "0b18b8n6dh3yx9vp5b7ym25590x9qrcbprs5vjnkj0zlj1hphnal";
  };

  meta = {
    description = "R package GSA";
    homepage = "https://cran.r-project.org/package=GSA";
  };
}
