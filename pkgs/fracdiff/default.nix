{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "fracdiff";
  version = "1.5-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fracdiff_1.5-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fracdiff/fracdiff_1.5-4.tar.gz"
    ];
    sha256 = "17idnhkgn3iv2jmrm45yq6arg3slsqqgvxrj5kkh2jhlfz1sk3n3";
  };

  meta = {
    description = "R package fracdiff";
    homepage = "https://cran.r-project.org/package=fracdiff";
  };
}
