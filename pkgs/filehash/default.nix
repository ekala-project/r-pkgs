{
  buildRPackage,
  fetchurl,
  digest,
}:

buildRPackage {
  pname = "filehash";
  version = "2.4-6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/filehash_2.4-6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/filehash/filehash_2.4-6.tar.gz"
    ];
    sha256 = "1cc1xq6vpk5cmsr4w5i6nvkx36grd38dds4lys4gmijlldml92sm";
  };

  propagatedBuildInputs = [
    digest
  ];

  meta = {
    description = "R package filehash";
    homepage = "https://cran.r-project.org/package=filehash";
  };
}
