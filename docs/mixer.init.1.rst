==========
mixer.init
==========

------------------------------
Initialize mixer and workspace
------------------------------

:Copyright: \(C) 2018 Intel Corporation, CC-BY-SA-3.0
:Manual section: 1


SYNOPSIS
========

``mixer init [flags]``


DESCRIPTION
===========

Initialize the mixer configuration and mixer workspace by writing default
configuration files if necessary and building the proper directory structure.

OPTIONS
=======

In addition to the globally recognized ``mixer`` flags (see ``mixer``\(1) for
more details), the following options are recognized.

-  ``--all-local``

   Initialize mix with all local bundles automatically included.

-  ``--all-upstream``

   Initialize the mix with all upstream bundles automatically included.

-  ``--clear-version {version}``

   Supply the Clear version to compose the mix from (default is "latest")

-  ``--config {path}``

   Supply a specific configuration file at `path` to use for mixing.

-  ``--git``

   Track mixer's internal work directory with git.

-  ``-h, --help``

   Display ``init`` help information and exit.

-  ``--local-rpms``

   Create and configure local RPM directories.

-  ``--mix-version {version}``

   Supply the mix version to build (default is 10)

-  ``--no-default-bundles``

   Skip adding default bundles to the mix

-  ``--upstream-url {url}``

   Supply an upstream URL to use for mixing (default is
   "https://download.clearlinux.org")

-  ``--upstream-version {version}``

   Alias to `--clear-version` (default is "latest")


EXIT STATUS
===========

On success, 0 is returned. A non-zero return code indicates a failure.

SEE ALSO
--------

* ``mixer``\(1)
