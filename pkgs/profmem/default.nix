{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "profmem";
  version = "0.7.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/profmem_0.7.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/profmem/profmem_0.7.0.tar.gz"
    ];
    sha256 = "1jy3d7sxmy4nqlrcrqqahgiy0lf0cb7pmh2iknf92y2b7zqwbvqn";
  };

  meta = {
    description = "R package profmem";
    homepage = "https://cran.r-project.org/package=profmem";
  };
}
