{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "audio";
  version = "0.1-12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/audio_0.1-12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/audio/audio_0.1-12.tar.gz"
    ];
    sha256 = "13jhmqyf0sbcqz7xpqhc8k9cjj1qfxzqknm05hh491bmz0jqfddv";
  };

  meta = {
    description = "R package audio";
    homepage = "https://cran.r-project.org/package=audio";
  };
}
