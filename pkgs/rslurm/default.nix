{
  buildRPackage,
  fetchurl,
  whisker,
}:

buildRPackage {
  pname = "rslurm";
  version = "0.6.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rslurm_0.6.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rslurm/rslurm_0.6.2.tar.gz"
    ];
    sha256 = "0z5lyrkvfh2201sc772gzbz3hc1mc04pxww611iwjf6qwzn5h0al";
  };

  propagatedBuildInputs = [
    whisker
  ];

  meta = {
    description = "R package rslurm";
    homepage = "https://cran.r-project.org/package=rslurm";
  };
}
