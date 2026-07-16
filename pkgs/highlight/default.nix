{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "highlight";
  version = "0.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/highlight_0.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/highlight/highlight_0.5.2.tar.gz"
    ];
    sha256 = "0vkv63grgzpr3prdqxpmp74c7phx89j74g2lp8pz82bq1c7i2fhs";
  };

  meta = {
    description = "R package highlight";
    homepage = "https://cran.r-project.org/package=highlight";
  };
}
