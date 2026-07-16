{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "psychotools";
  version = "0.7-6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/psychotools_0.7-6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/psychotools/psychotools_0.7-6.tar.gz"
    ];
    sha256 = "1jzy84wad5vij1c4vbjb8h90wmhvicrb6j6yk4nn0s8fgzm46kbw";
  };

  meta = {
    description = "R package psychotools";
    homepage = "https://cran.r-project.org/package=psychotools";
  };
}
