{
  buildRPackage,
  fetchurl,
  R_utils,
  beepr,
  clipr,
  codetools,
  dplyr,
  e1071,
  future,
  future_apply,
  mirai,
  parallelly,
  pbapply,
  progressr,
  qs2,
  sessioninfo,
  testthat,
}:

buildRPackage {
  pname = "SimDesign";
  version = "2.25";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/SimDesign_2.25.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/SimDesign/SimDesign_2.25.tar.gz"
    ];
    sha256 = "0vq88qi1jawlqw6nj7wy7y1czpvs92xzz0lqsxv2azsgw7jfa0sx";
  };

  propagatedBuildInputs = [
    R_utils
    beepr
    clipr
    codetools
    dplyr
    e1071
    future
    future_apply
    mirai
    parallelly
    pbapply
    progressr
    qs2
    sessioninfo
    testthat
  ];

  meta = {
    description = "R package SimDesign";
    homepage = "https://cran.r-project.org/package=SimDesign";
  };
}
