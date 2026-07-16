{
  buildRPackage,
  fetchurl,
  tclust,
}:

buildRPackage {
  pname = "trimcluster";
  version = "0.2-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/trimcluster_0.2-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/trimcluster/trimcluster_0.2-0.tar.gz"
    ];
    sha256 = "0vmj3hrwm3rcd4sf7a6jq3ay7qgr39x3zpzmgi67gd8d8cr2hnfh";
  };

  propagatedBuildInputs = [
    tclust
  ];

  meta = {
    description = "R package trimcluster";
    homepage = "https://cran.r-project.org/package=trimcluster";
  };
}
