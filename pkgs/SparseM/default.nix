{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "SparseM";
  version = "1.84-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/SparseM_1.84-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/SparseM/SparseM_1.84-2.tar.gz"
    ];
    sha256 = "0rc6x466jhalb6baxxhffmmcpi03nndvvighp696rrvrhsxzv015";
  };

  meta = {
    description = "R package SparseM";
    homepage = "https://cran.r-project.org/package=SparseM";
  };
}
