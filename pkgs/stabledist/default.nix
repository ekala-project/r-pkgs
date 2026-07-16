{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "stabledist";
  version = "0.7-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/stabledist_0.7-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/stabledist/stabledist_0.7-2.tar.gz"
    ];
    sha256 = "1mbgl6an18dzry55pvy08zdhj1gar5mlyvkfnlawiqyqq081frr6";
  };

  meta = {
    description = "R package stabledist";
    homepage = "https://cran.r-project.org/package=stabledist";
  };
}
