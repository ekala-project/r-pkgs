{
  buildRPackage,
  fetchurl,
  Matrix,
  igraph,
  scatterplot3d,
}:

buildRPackage {
  pname = "diffusionMap";
  version = "1.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/diffusionMap_1.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/diffusionMap/diffusionMap_1.2.0.tar.gz"
    ];
    sha256 = "1rvk7069brlm1s9kqj4c31mwwr3mw4hmhay95cjjjfmw5xclff2j";
  };

  propagatedBuildInputs = [
    Matrix
    igraph
    scatterplot3d
  ];

  meta = {
    description = "R package diffusionMap";
    homepage = "https://cran.r-project.org/package=diffusionMap";
  };
}
