{
  buildRPackage,
  fetchurl,
  backports,
}:

buildRPackage {
  pname = "base64url";
  version = "1.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/base64url_1.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/base64url/base64url_1.4.tar.gz"
    ];
    sha256 = "0n1c2b68vza1dh7sk38v6biiwm72c4jpl79kpdg1bsb0hq9qy18x";
  };

  propagatedBuildInputs = [
    backports
  ];

  meta = {
    description = "R package base64url";
    homepage = "https://cran.r-project.org/package=base64url";
  };
}
