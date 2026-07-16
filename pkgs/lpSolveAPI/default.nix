{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "lpSolveAPI";
  version = "5.5.2.0-17.15";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lpSolveAPI_5.5.2.0-17.15.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lpSolveAPI/lpSolveAPI_5.5.2.0-17.15.tar.gz"
    ];
    sha256 = "0mmxd00yw1svby4has88jx8sy91ykdr98zvd1xmrgp8b6kd06l7z";
  };

  meta = {
    description = "R package lpSolveAPI";
    homepage = "https://cran.r-project.org/package=lpSolveAPI";
  };
}
