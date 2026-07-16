{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "findpython";
  version = "1.0.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/findpython_1.0.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/findpython/findpython_1.0.9.tar.gz"
    ];
    sha256 = "1jxp5hm9n3i8fl0204cpi194sp8js2m4wzkgqz7v3m6dvw65x8dn";
  };

  meta = {
    description = "R package findpython";
    homepage = "https://cran.r-project.org/package=findpython";
  };
}
