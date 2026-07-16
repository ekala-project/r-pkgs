{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "wk";
  version = "0.9.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/wk_0.9.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/wk/wk_0.9.5.tar.gz"
    ];
    sha256 = "1vba43hkr9mdqaikb9m27qs4jmcgmdxqbg8phbzj5lzqj0l2h85p";
  };

  meta = {
    description = "R package wk";
    homepage = "https://cran.r-project.org/package=wk";
  };
}
