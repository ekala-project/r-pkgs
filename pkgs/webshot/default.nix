{
  buildRPackage,
  fetchurl,
  callr,
  jsonlite,
  magrittr,
}:

buildRPackage {
  pname = "webshot";
  version = "0.5.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/webshot_0.5.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/webshot/webshot_0.5.5.tar.gz"
    ];
    sha256 = "04xrrf72323sgzsdkbl05p2fdsi486i9avrrxvw0l3n8r8y92xfn";
  };

  propagatedBuildInputs = [
    callr
    jsonlite
    magrittr
  ];

  meta = {
    description = "R package webshot";
    homepage = "https://cran.r-project.org/package=webshot";
  };
}
