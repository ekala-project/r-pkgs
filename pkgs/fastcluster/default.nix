{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "fastcluster";
  version = "1.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fastcluster_1.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fastcluster/fastcluster_1.3.0.tar.gz"
    ];
    sha256 = "1yv3nd8s9f45pqkv4srv41chh8ij0vikprfwgyphakc0xc9lj8gw";
  };

  meta = {
    description = "R package fastcluster";
    homepage = "https://cran.r-project.org/package=fastcluster";
  };
}
