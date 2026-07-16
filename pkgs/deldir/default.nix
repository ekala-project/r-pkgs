{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "deldir";
  version = "2.0-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/deldir_2.0-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/deldir/deldir_2.0-4.tar.gz"
    ];
    sha256 = "0ls69b9yynvsiy6madvzafcb0jdvxw66sin7cinpnw63israq66l";
  };

  meta = {
    description = "R package deldir";
    homepage = "https://cran.r-project.org/package=deldir";
  };
}
