{
  buildRPackage,
  fetchurl,
  showtextdb,
  sysfonts,
}:

buildRPackage {
  pname = "showtext";
  version = "0.9-8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/showtext_0.9-8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/showtext/showtext_0.9-8.tar.gz"
    ];
    sha256 = "0l73wm37ralrk20xdd72bjy542vpl936k80gxaarfqxg9nm1ip22";
  };

  propagatedBuildInputs = [
    showtextdb
    sysfonts
  ];

  meta = {
    description = "R package showtext";
    homepage = "https://cran.r-project.org/package=showtext";
  };
}
