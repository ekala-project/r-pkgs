{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "registry";
  version = "0.5-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/registry_0.5-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/registry/registry_0.5-1.tar.gz"
    ];
    sha256 = "1k3j6dx350awamr0dwwgkhfs46vsnj4nf08iw5byq0x7n3nkdsnz";
  };

  meta = {
    description = "R package registry";
    homepage = "https://cran.r-project.org/package=registry";
  };
}
