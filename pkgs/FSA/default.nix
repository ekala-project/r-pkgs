{
  buildRPackage,
  fetchurl,
  FlexParamCurve,
  car,
  dunn_test,
  lmtest,
  plotrix,
  purrr,
  withr,
}:

buildRPackage {
  pname = "FSA";
  version = "0.10.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/FSA_0.10.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/FSA/FSA_0.10.1.tar.gz"
    ];
    sha256 = "0ws58hp5wcw5m359ykymqprg7x148v6y6l08h8kwv4xivd27nhhc";
  };

  propagatedBuildInputs = [
    FlexParamCurve
    car
    dunn_test
    lmtest
    plotrix
    purrr
    withr
  ];

  meta = {
    description = "R package FSA";
    homepage = "https://cran.r-project.org/package=FSA";
  };
}
