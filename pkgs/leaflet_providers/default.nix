{
  buildRPackage,
  fetchurl,
  htmltools,
}:

buildRPackage {
  pname = "leaflet_providers";
  version = "3.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/leaflet_providers_3.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/leaflet_providers/leaflet_providers_3.0.0.tar.gz"
    ];
    sha256 = "07pn22is40zv9xpnshfrwpza4fa6csnsg6zidqxccj6xinkq5smg";
  };

  propagatedBuildInputs = [
    htmltools
  ];

  meta = {
    description = "R package leaflet_providers";
    homepage = "https://cran.r-project.org/package=leaflet_providers";
  };
}
