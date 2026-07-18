# System dependency overrides for R packages.
#
# R packages that require native/system libraries to build.
# Ported from nixpkgs pkgs/development/r-modules/default.nix.
#
# `final.pkgs` provides the top-level package set, avoiding
# shadowing from R package names (e.g. R's `curl` vs `pkgs.curl`).
final: prev:
let
  pkgs = final.pkgs;
  lib = pkgs.lib;
  stdenv = pkgs.stdenv;
in
{
  # --------------------------------------------------------------------------
  # nativeBuildInputs overrides
  # --------------------------------------------------------------------------

  animation = prev.animation.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.which ];
  });

  arrow = prev.arrow.overrideAttrs (_: {
    meta = { broken = true; }; # missing: arrow-cpp (null in corepkgs)
  });

  audio = prev.audio.overrideAttrs (_: {
    meta = { broken = true; }; # missing: portaudio
  });

  bio3d = prev.bio3d.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.zlib ];
    buildInputs = (old.buildInputs or []) ++ [ pkgs.zlib.dev ];
  });

  Cairo = prev.Cairo.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ (with pkgs; [
      libtiff
      libjpeg
      cairo.dev
      libxt.dev
      fontconfig.lib
    ]);
    buildInputs = (old.buildInputs or []) ++ [ pkgs.pkg-config ];
    env = (old.env or {}) // {
      NIX_LDFLAGS = "-lfontconfig";
    };
  });

  clarabel = prev.clarabel.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.cargo ];
    postPatch = ''
      patchShebangs configure
    '';
  });

  curl = prev.curl.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.curl.dev ];
    preConfigure = "patchShebangs configure";
  });

  data_table = prev.data_table.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [])
      ++ [ pkgs.pkg-config pkgs.zlib.dev ]
      ++ lib.optional stdenv.hostPlatform.isDarwin pkgs.llvmPackages.openmp;
    env = (old.env or {}) // {
      NIX_CFLAGS_COMPILE = (old.env.NIX_CFLAGS_COMPILE or "") + " -fopenmp";
    };
    patchPhase = "patchShebangs configure";
    doCheck = false;
  });

  exactextractr = prev.exactextractr.overrideAttrs (_: {
    meta = { broken = true; }; # missing: geos
  });

  fftw = prev.fftw.overrideAttrs (_: {
    meta = { broken = true; }; # missing: fftw
  });

  fftwtools = prev.fftwtools.overrideAttrs (_: {
    meta = { broken = true; }; # missing: fftw
  });

  Formula = prev.Formula.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.gmp ];
  });

  gdtools = prev.gdtools.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [])
      ++ (with pkgs; [ cairo.dev fontconfig.lib freetype.dev ])
      ++ lib.optionals stdenv.hostPlatform.isDarwin (with pkgs; [ expat libxdmcp ]);
    buildInputs = (old.buildInputs or []) ++ [ pkgs.pkg-config ];
    preConfigure = ''
      patchShebangs configure
    '';
    env = (old.env or {}) // {
      NIX_LDFLAGS = "-lfontconfig -lfreetype";
    };
  });

  ggiraph = prev.ggiraph.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.libpng.dev ];
    preInstall = (old.preInstall or "") + "export HOME=$TMPDIR";
  });

  git2r = prev.git2r.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ (with pkgs; [
      zlib.dev
      openssl.dev
      libssh2.dev
      libgit2
      pkg-config
    ]);
  });

  gmp = prev.gmp.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.gmp.dev ];
  });

  gsl = prev.gsl.overrideAttrs (_: {
    meta = { broken = true; }; # missing: gsl
  });

  gert = prev.gert.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.libgit2 ];
  });

  haven = prev.haven.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.zlib.dev ];
  });

  httpuv = prev.httpuv.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.zlib.dev ];
    preConfigure = ''
      patchShebangs configure
    '';
  });

  imager = prev.imager.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.libx11.dev ];
  });

  jpeg = prev.jpeg.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.libjpeg.dev ];
  });

  jqr = prev.jqr.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.jq.dev ];
    buildInputs = (old.buildInputs or []) ++ [ pkgs.jq.out ];
    preConfigure = ''
      patchShebangs configure
    '';
  });

  leidenAlg = prev.leidenAlg.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.gmp.dev ];
  });

  lwgeom = prev.lwgeom.overrideAttrs (_: {
    meta = { broken = true; }; # missing: proj, geos
  });

  magick = prev.magick.overrideAttrs (_: {
    meta = { broken = true; }; # missing: imagemagick (null in corepkgs)
  });

  ModelMetrics = prev.ModelMetrics.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [])
      ++ lib.optional stdenv.hostPlatform.isDarwin pkgs.llvmPackages.openmp;
    env = (old.env or {}) // {
      NIX_CFLAGS_COMPILE =
        (old.env.NIX_CFLAGS_COMPILE or "") + lib.optionalString stdenv.hostPlatform.isDarwin " -fopenmp";
    };
  });

  mvabund = prev.mvabund.overrideAttrs (_: {
    meta = { broken = true; }; # missing: gsl
  });

  nanonext = prev.nanonext.overrideAttrs (_: {
    meta = { broken = true; }; # missing: mbedtls, nng
  });

  ncdf4 = prev.ncdf4.overrideAttrs (_: {
    meta = { broken = true; }; # missing: netcdf
  });

  nloptr = prev.nloptr.overrideAttrs (_: {
    meta = { broken = true; }; # missing: nlopt
  });

  odbc = prev.odbc.overrideAttrs (_: {
    meta = { broken = true; }; # missing: unixODBC (null in corepkgs)
  });

  pak = prev.pak.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.curl.dev ];
    preConfigure = ''
      patchShebangs configure
      patchShebangs src/library/curl/configure
      patchShebangs src/library/keyring/configure
      patchShebangs src/library/pkgdepends/configure
      patchShebangs src/library/ps/configure
    '';
  });

  pander = prev.pander.overrideAttrs (_: {
    meta = { broken = true; }; # missing: pandoc
  });

  pbdMPI = prev.pbdMPI.overrideAttrs (_: {
    meta = { broken = true; }; # missing: mpi (null in corepkgs)
  });

  pbdZMQ = prev.pbdZMQ.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [])
      ++ [ pkgs.pkg-config ]
      ++ lib.optionals stdenv.hostPlatform.isDarwin [ pkgs.which ];
    buildInputs = (old.buildInputs or [])
      ++ [ pkgs.zeromq ];
  });

  pdftools = prev.pdftools.overrideAttrs (_: {
    meta = { broken = true; }; # missing: poppler (null in corepkgs)
  });

  phytools = prev.phytools.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.which ];
  });

  PKI = prev.PKI.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.openssl.dev ];
  });

  png = prev.png.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.libpng.dev ];
  });

  protolite = prev.protolite.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.protobuf ];
    preConfigure = ''
      patchShebangs configure
    '';
  });

  RcppGSL = prev.RcppGSL.overrideAttrs (_: {
    meta = { broken = true; }; # missing: gsl
  });

  RcppZiggurat = prev.RcppZiggurat.overrideAttrs (_: {
    meta = { broken = true; }; # missing: gsl
  });

  redux = prev.redux.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.pkg-config ];
    buildInputs = (old.buildInputs or []) ++ [ pkgs.hiredis ];
  });

  reprex = prev.reprex.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.which ];
  });

  rgdal = prev.rgdal.overrideAttrs (_: {
    meta = { broken = true; }; # missing: proj
  });

  rgeos = prev.rgeos.overrideAttrs (_: {
    meta = { broken = true; }; # missing: geos
  });

  Rglpk = prev.Rglpk.overrideAttrs (_: {
    meta = { broken = true; }; # missing: glpk
  });

  rjags = prev.rjags.overrideAttrs (_: {
    meta = { broken = true; }; # missing: jags
  });

  rJava = prev.rJava.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ (with pkgs; [
      zlib
      bzip2.dev
      icu
      xz.dev
      zstd.dev
      pcre.dev
      jdk
      libzip
      libdeflate
    ]);
    preConfigure = ''
      export JAVA_CPPFLAGS=-I${pkgs.jdk}/include/
      export JAVA_HOME=${pkgs.jdk}
      substituteInPlace R/zzz.R.in \
        --replace-fail ".onLoad <- function(libname, pkgname) {" \
          ".onLoad <- function(libname, pkgname) {
           Sys.setenv(\"JAVA_HOME\" = Sys.getenv(\"JAVA_HOME\", unset = \"${pkgs.jdk}\"))"
    '';
  });

  Rmpfr = prev.Rmpfr.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ (with pkgs; [
      gmp
      mpfr.dev
    ]);
    configureFlags = [
      "--with-mpfr-include=${pkgs.mpfr.dev}/include"
    ];
  });

  Rmpi = prev.Rmpi.overrideAttrs (_: {
    meta = { broken = true; }; # missing: prrte
  });

  RMySQL = prev.RMySQL.overrideAttrs (_: {
    meta = { broken = true; }; # missing: libmysqlclient
  });

  RNetCDF = prev.RNetCDF.overrideAttrs (_: {
    meta = { broken = true; }; # missing: netcdf, udunits
  });

  RODBC = prev.RODBC.overrideAttrs (_: {
    meta = { broken = true; }; # missing: libiodbc
  });

  RPostgreSQL = prev.RPostgreSQL.overrideAttrs (_: {
    meta = { broken = true; }; # missing: libpq
  });

  RProtoBuf = prev.RProtoBuf.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ (with pkgs; [
      protobuf
      abseil-cpp.dev
    ]);
    buildInputs = (old.buildInputs or []) ++ [ pkgs.pkg-config ];
    configureFlags = [ "ac_cv_prog_cxx_cxx11=" ];
  });

  rsvg = prev.rsvg.overrideAttrs (_: {
    meta = { broken = true; }; # missing: librsvg
  });

  runjags = prev.runjags.overrideAttrs (_: {
    meta = { broken = true; }; # missing: jags
  });

  s2 = prev.s2.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.pkg-config ];
    buildInputs = (old.buildInputs or []) ++ (with pkgs; [
      abseil-cpp
      openssl.dev
    ]);
    preConfigure = ''
      substituteInPlace "configure" \
        --replace-fail "absl_s2" "absl_flags absl_check"
    '';
  });

  seqinr = prev.seqinr.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.zlib.dev ];
  });

  sf = prev.sf.overrideAttrs (_: {
    meta = { broken = true; }; # missing: proj, geos
  });

  showtext = prev.showtext.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ (with pkgs; [
      zlib
      libpng
      icu
      freetype.dev
    ]);
    buildInputs = (old.buildInputs or []) ++ [ pkgs.pkg-config ];
  });

  stringi = prev.stringi.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.icu.dev ];
    buildInputs = (old.buildInputs or []) ++ [ pkgs.pkg-config ];
  });

  svglite = prev.svglite.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.libpng.dev ];
  });

  sysfonts = prev.sysfonts.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ (with pkgs; [
      zlib
      libpng
      freetype.dev
    ]);
    buildInputs = (old.buildInputs or []) ++ [ pkgs.pkg-config ];
  });

  systemfonts = prev.systemfonts.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ (with pkgs; [
      fontconfig.dev
      freetype.dev
    ]);
    buildInputs = (old.buildInputs or []) ++ [ pkgs.pkg-config ];
    preConfigure = "patchShebangs configure";
  });

  terra = prev.terra.overrideAttrs (_: {
    meta = { broken = true; }; # missing: proj, geos, netcdf
  });

  tesseract = prev.tesseract.overrideAttrs (_: {
    meta = { broken = true; }; # missing: tesseract, leptonica
  });

  textshaping = prev.textshaping.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.pkg-config ];
    buildInputs = (old.buildInputs or []) ++ (with pkgs; [
      harfbuzz.dev
      freetype.dev
      fribidi
      libpng
    ]);
    env = {
      NIX_LDFLAGS = "-lfribidi -lharfbuzz";
    };
  });

  tiff = prev.tiff.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.libtiff.dev ];
  });

  tkrplot = prev.tkrplot.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ (with pkgs; [
      libx11
      tk.dev
    ]);
  });

  topicmodels = prev.topicmodels.overrideAttrs (_: {
    meta = { broken = true; }; # missing: gsl
  });

  udunits2 = prev.udunits2.overrideAttrs (_: {
    meta = { broken = true; }; # missing: udunits
  });

  units = prev.units.overrideAttrs (_: {
    meta = { broken = true; }; # missing: udunits
  });

  vdiffr = prev.vdiffr.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.libpng.dev ];
  });

  webp = prev.webp.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.pkg-config ];
    buildInputs = (old.buildInputs or []) ++ [ pkgs.libwebp ];
  });

  XML = prev.XML.overrideAttrs (_: {
    meta = { broken = true; }; # missing: xmlsec
  });

  xml2 = prev.xml2.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [])
      ++ [ pkgs.libxml2.dev ]
      ++ lib.optionals stdenv.hostPlatform.isDarwin [ pkgs.perl ];
    preConfigure = ''
      export LIBXML_INCDIR=${pkgs.libxml2.dev}/include/libxml2
      patchShebangs configure
    '';
  });

  qqconf = prev.qqconf.overrideAttrs (_: {
    meta = { broken = true; }; # missing: fftw
  });

  ragg = prev.ragg.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.pkg-config ];
    buildInputs = (old.buildInputs or [])
      ++ (with pkgs; [
        freetype.dev
        libpng.dev
        libtiff.dev
        zlib.dev
        libjpeg.dev
        bzip2.dev
        libwebp
      ])
      ++ lib.optional stdenv.hostPlatform.isDarwin pkgs.lerc.dev;
  });

  # --------------------------------------------------------------------------
  # buildInputs-only overrides (packages not already covered above)
  # --------------------------------------------------------------------------

  bigmemory = prev.bigmemory.overrideAttrs (old: {
    buildInputs = (old.buildInputs or [])
      ++ lib.optionals stdenv.hostPlatform.isLinux [ pkgs.libuuid.dev ];
  });

  fs = prev.fs.overrideAttrs (old: {
    buildInputs = (old.buildInputs or []) ++ [ pkgs.libuv ];
  });

  gaston = prev.gaston.overrideAttrs (old: {
    buildInputs = (old.buildInputs or []) ++ [ pkgs.zlib.dev ];
  });

  igraph = prev.igraph.overrideAttrs (_: {
    meta = { broken = true; }; # missing: glpk
  });

  openssl = prev.openssl.overrideAttrs (old: {
    buildInputs = (old.buildInputs or []) ++ [ pkgs.pkg-config ];
    preConfigure = ''
      patchShebangs configure
    '';
    env = (old.env or {}) // {
      PKGCONFIG_CFLAGS = "-I${pkgs.openssl.dev}/include";
      PKGCONFIG_LIBS = "-Wl,-rpath,${lib.getLib pkgs.openssl}/lib -L${lib.getLib pkgs.openssl}/lib -lssl -lcrypto";
    };
  });

  PoissonBinomial = prev.PoissonBinomial.overrideAttrs (_: {
    meta = { broken = true; }; # missing: fftw
  });

  proj4 = prev.proj4.overrideAttrs (_: {
    meta = { broken = true; }; # missing: proj
  });

  PROJ = prev.PROJ.overrideAttrs (_: {
    meta = { broken = true; }; # missing: proj
  });

  qpdf = prev.qpdf.overrideAttrs (old: {
    buildInputs = (old.buildInputs or []) ++ (with pkgs; [
      libjpeg.dev
      zlib.dev
    ]);
  });

  RcppAlgos = prev.RcppAlgos.overrideAttrs (old: {
    buildInputs = (old.buildInputs or []) ++ [ pkgs.gmp.dev ];
  });

  rgl = prev.rgl.overrideAttrs (old: {
    buildInputs = (old.buildInputs or []) ++ (with pkgs; [
      libGLU
      libGL
      libx11.dev
      freetype.dev
      libpng.dev
    ]);
    env = (old.env or {}) // {
      RGL_USE_NULL = "true";
    };
  });

  RMariaDB = prev.RMariaDB.overrideAttrs (_: {
    meta = { broken = true; }; # missing: libmysqlclient
  });

  RPostgres = prev.RPostgres.overrideAttrs (_: {
    meta = { broken = true; }; # missing: libpq
  });

  Signac = prev.Signac.overrideAttrs (old: {
    buildInputs = (old.buildInputs or []) ++ [ pkgs.zlib.dev ];
  });

  spaMM = prev.spaMM.overrideAttrs (_: {
    meta = { broken = true; }; # missing: gsl
  });

  tcltk2 = prev.tcltk2.overrideAttrs (old: {
    buildInputs = (old.buildInputs or []) ++ (with pkgs; [
      tcl
      tk
    ]);
  });

  tikzDevice = prev.tikzDevice.overrideAttrs (old: {
    buildInputs = (old.buildInputs or []) ++ (with pkgs; [
      which
      texliveMedium
    ]);
  });

  gridGraphics = prev.gridGraphics.overrideAttrs (old: {
    buildInputs = (old.buildInputs or []) ++ [ pkgs.which ];
  });

  vcfR = prev.vcfR.overrideAttrs (old: {
    buildInputs = (old.buildInputs or []) ++ [ pkgs.zlib.dev ];
  });

  writexl = prev.writexl.overrideAttrs (old: {
    buildInputs = (old.buildInputs or []) ++ [ pkgs.zlib.dev ];
  });

  # --------------------------------------------------------------------------
  # packagesRequiringHome
  # --------------------------------------------------------------------------

  PSCBS = prev.PSCBS.overrideAttrs (old: {
    preInstall = (old.preInstall or "") + "export HOME=$TMPDIR";
  });

  repmis = prev.repmis.overrideAttrs (old: {
    preInstall = (old.preInstall or "") + "export HOME=$TMPDIR";
  });

  R_cache = prev.R_cache.overrideAttrs (old: {
    preInstall = (old.preInstall or "") + "export HOME=$TMPDIR";
  });

  R_rsp = prev.R_rsp.overrideAttrs (old: {
    preInstall = (old.preInstall or "") + "export HOME=$TMPDIR";
  });

  styler = prev.styler.overrideAttrs (old: {
    preInstall = (old.preInstall or "") + "export HOME=$TMPDIR";
  });

  shinymeta = prev.shinymeta.overrideAttrs (old: {
    preInstall = (old.preInstall or "") + "export HOME=$TMPDIR";
  });

  pins = prev.pins.overrideAttrs (old: {
    preInstall = (old.preInstall or "") + "export HOME=$TMPDIR";
  });

  fixest = prev.fixest.overrideAttrs (old: {
    preInstall = (old.preInstall or "") + "export HOME=$TMPDIR";
    postPatch = "patchShebangs configure";
  });

  # --------------------------------------------------------------------------
  # brokenPackages
  # --------------------------------------------------------------------------

  av = prev.av.overrideAttrs (_: { meta = { broken = true; }; });

  # --------------------------------------------------------------------------
  # otherOverrides (patchShebangs, env vars, configure flags, etc.)
  # --------------------------------------------------------------------------

  cubature = prev.cubature.overrideAttrs (_: {
    enableParallelBuilding = false;
  });

  findpython = prev.findpython.overrideAttrs (old: {
    postPatch = ''
      substituteInPlace "R/find_python_cmd.r" \
        --replace-fail 'python_cmds[which(python_cmds != "")]' \
        'python_cmds <- c(python_cmds, file.path("${lib.getBin pkgs.python3}", "bin", "python3"))
         python_cmds[which(python_cmds != "")]'
    '';
  });

  float = prev.float.overrideAttrs (_: {
    enableParallelBuilding = false;
  });

  hdf5r = prev.hdf5r.overrideAttrs (_: {
    meta = { broken = true; }; # missing: Rhdf5lib.hdf5
  });

  httr2 = prev.httr2.overrideAttrs (_: {
    preConfigure = "patchShebangs configure";
  });

  keyring = prev.keyring.overrideAttrs (_: {
    preConfigure = ''
      patchShebangs configure
    '';
  });

  nanoparquet = prev.nanoparquet.overrideAttrs (_: {
    postPatch = "patchShebangs configure";
  });

  OpenMx = prev.OpenMx.overrideAttrs (old: {
    env = (old.env or {}) // {
      NIX_CFLAGS_COMPILE = (old.env.NIX_CFLAGS_COMPILE or "") + " -Wno-ignored-attributes";
    };
    preConfigure = ''
      patchShebangs configure
    '';
  });

  pkgdepends = prev.pkgdepends.overrideAttrs (_: {
    postPatch = ''
      patchShebangs configure
    '';
  });

  pingr = prev.pingr.overrideAttrs (_: {
    postPatch = "patchShebangs configure";
  });

  ps = prev.ps.overrideAttrs (_: {
    preConfigure = "patchShebangs configure";
  });

  purrr = prev.purrr.overrideAttrs (_: {
    patchPhase = "patchShebangs configure";
  });

  quarto = prev.quarto.overrideAttrs (_: {
    meta = { broken = true; }; # missing: quarto
  });

  RcppArmadillo = prev.RcppArmadillo.overrideAttrs (_: {
    patchPhase = "patchShebangs configure";
  });

  RcppParallel = prev.RcppParallel.overrideAttrs (_: {
    preConfigure = "patchShebangs configure";
  });

  redland = prev.redland.overrideAttrs (_: {
    meta = { broken = true; }; # missing: redland, librdf_raptor2, librdf_rasqal
  });

  rlang = prev.rlang.overrideAttrs (_: {
    preConfigure = "patchShebangs configure";
  });

  rmarkdown = prev.rmarkdown.overrideAttrs (_: {
    meta = { broken = true; }; # missing: pandoc
  });

  rpf = prev.rpf.overrideAttrs (_: {
    patchPhase = "patchShebangs configure";
  });

  rstan = prev.rstan.overrideAttrs (old: {
    env = (old.env or {}) // {
      NIX_CFLAGS_COMPILE = (old.env.NIX_CFLAGS_COMPILE or "") + " -DBOOST_PHOENIX_NO_VARIADIC_EXPRESSION";
    };
  });

  Rserve = prev.Rserve.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.openssl ];
    configureFlags = [
      "--with-server"
      "--with-client"
    ];
  });

  sodium = prev.sodium.overrideAttrs (old: {
    preConfigure = ''
      patchShebangs configure
    '';
    nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.pkg-config ];
    buildInputs = (old.buildInputs or []) ++ [ pkgs.libsodium.dev ];
  });

  V8 = prev.V8.overrideAttrs (_: {
    meta = { broken = true; }; # missing: nodejs-slim_22
  });

  webfakes = prev.webfakes.overrideAttrs (_: {
    postPatch = "patchShebangs configure";
  });

  websocket = prev.websocket.overrideAttrs (old: {
    env = (old.env or {}) // {
      PKGCONFIG_CFLAGS = "-I${pkgs.openssl.dev}/include";
      PKGCONFIG_LIBS = "-Wl,-rpath,${lib.getLib pkgs.openssl}/lib -L${lib.getLib pkgs.openssl}/lib -lssl -lcrypto";
    };
  });
}
