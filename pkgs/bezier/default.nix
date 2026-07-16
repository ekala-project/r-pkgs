{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "bezier";
  version = "1.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bezier_1.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bezier/bezier_1.1.2.tar.gz"
    ];
    sha256 = "1vw5128v8h973xwa1fdm9cw2jvrldj87nd55lddlp3qsz3ag4br6";
  };

  meta = {
    description = "R package bezier";
    homepage = "https://cran.r-project.org/package=bezier";
  };
}
