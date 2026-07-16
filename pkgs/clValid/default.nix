{
  buildRPackage,
  fetchurl,
  class,
  cluster,
}:

buildRPackage {
  pname = "clValid";
  version = "0.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/clValid_0.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/clValid/clValid_0.7.tar.gz"
    ];
    sha256 = "18aiyjhnh5mfdxbzns4cy0r8bymfikhwkybpn4g04qhli5ls8z83";
  };

  propagatedBuildInputs = [
    class
    cluster
  ];

  meta = {
    description = "R package clValid";
    homepage = "https://cran.r-project.org/package=clValid";
  };
}
