{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "gee";
  version = "4.13-29";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gee_4.13-29.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gee/gee_4.13-29.tar.gz"
    ];
    sha256 = "157zqbshnmkhxbq5r0ss5mswhd7s603gjdgyv1wklagpq6qfz0z0";
  };

  meta = {
    description = "R package gee";
    homepage = "https://cran.r-project.org/package=gee";
  };
}
