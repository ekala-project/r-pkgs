{
  buildRPackage,
  fetchurl,
  rstudioapi,
}:

buildRPackage {
  pname = "getPass";
  version = "0.2-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/getPass_0.2-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/getPass/getPass_0.2-4.tar.gz"
    ];
    sha256 = "0a0q9v29z49s1iprs5di01wlflxj74sbizwsrzjfc538nkwfpnqm";
  };

  propagatedBuildInputs = [
    rstudioapi
  ];

  meta = {
    description = "R package getPass";
    homepage = "https://cran.r-project.org/package=getPass";
  };
}
