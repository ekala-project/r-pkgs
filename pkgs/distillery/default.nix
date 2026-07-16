{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "distillery";
  version = "1.2-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/distillery_1.2-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/distillery/distillery_1.2-2.tar.gz"
    ];
    sha256 = "1rsxrq5j5zzk48r27l7ns7igcij9crwi001h002h2fjcai7m03cr";
  };

  meta = {
    description = "R package distillery";
    homepage = "https://cran.r-project.org/package=distillery";
  };
}
