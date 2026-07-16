{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "outliers";
  version = "0.15";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/outliers_0.15.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/outliers/outliers_0.15.tar.gz"
    ];
    sha256 = "1yrmwvjjb0a6sbx940k9svf23cykcxz8rrwcgyic7lpgzbrdfcfc";
  };

  meta = {
    description = "R package outliers";
    homepage = "https://cran.r-project.org/package=outliers";
  };
}
