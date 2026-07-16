{
  buildRPackage,
  fetchurl,
  cellranger,
  cpp11,
  progress,
  tibble,
}:

buildRPackage {
  pname = "readxl";
  version = "1.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/readxl_1.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/readxl/readxl_1.5.0.tar.gz"
    ];
    sha256 = "1rsc07jpr1pz9vpgyb1ydf8zsv0nasb63c605psacns5gz94g0wh";
  };

  propagatedBuildInputs = [
    cellranger
    cpp11
    progress
    tibble
  ];

  meta = {
    description = "R package readxl";
    homepage = "https://cran.r-project.org/package=readxl";
  };
}
