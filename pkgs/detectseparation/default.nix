{
  buildRPackage,
  fetchurl,
  ROI,
  ROI_plugin_lpsolve,
  lpSolveAPI,
  pkgload,
}:

buildRPackage {
  pname = "detectseparation";
  version = "0.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/detectseparation_0.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/detectseparation/detectseparation_0.4.0.tar.gz"
    ];
    sha256 = "1pjrbbrvjb30w75s686nsnq077k8rs72lb414rl4cd2rff24779k";
  };

  propagatedBuildInputs = [
    ROI
    ROI_plugin_lpsolve
    lpSolveAPI
    pkgload
  ];

  meta = {
    description = "R package detectseparation";
    homepage = "https://cran.r-project.org/package=detectseparation";
  };
}
