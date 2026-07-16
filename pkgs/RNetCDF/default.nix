{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "RNetCDF";
  version = "2.11-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RNetCDF_2.11-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RNetCDF/RNetCDF_2.11-1.tar.gz"
    ];
    sha256 = "0n3zc7i59cr3qms2x2spn948wl9imd7yiajwwyn6mac0q0wrbb18";
  };

  meta = {
    description = "R package RNetCDF";
    homepage = "https://cran.r-project.org/package=RNetCDF";
  };
}
