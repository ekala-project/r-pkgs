{
  buildRPackage,
  fetchurl,
  futile_options,
  lambda_r,
}:

buildRPackage {
  pname = "futile_logger";
  version = "1.4.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/futile_logger_1.4.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/futile_logger/futile_logger_1.4.9.tar.gz"
    ];
    sha256 = "1mmkq855vl02xicx9slm3wfhzbfrgn79nrad5ar6vl2j5szfsss9";
  };

  propagatedBuildInputs = [
    futile_options
    lambda_r
  ];

  meta = {
    description = "R package futile_logger";
    homepage = "https://cran.r-project.org/package=futile_logger";
  };
}
