{
  buildRPackage,
  fetchurl,
  xfun,
}:

buildRPackage {
  pname = "tinytex";
  version = "0.59";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tinytex_0.59.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tinytex/tinytex_0.59.tar.gz"
    ];
    sha256 = "0gklyckh5s3654m3b3j7z74d86y7n56z5pjzxcc16pxxbxmmr18f";
  };

  propagatedBuildInputs = [
    xfun
  ];

  meta = {
    description = "R package tinytex";
    homepage = "https://cran.r-project.org/package=tinytex";
  };
}
