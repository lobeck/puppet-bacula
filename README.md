# puppet-bacula

Another puppet module for bacula management

## Introduction

When starting with my bacula, i got pretty disappointed with the existing modules for this.  

So i started my own implementation and tried to keep it as simple as possible.  

Most of the code is already done, but i will commit it step by step to add further documentation and do some cleanup.

## Prequisites

This module relies heavly on hiera, so you should already have it in place.

PuppetDB is also required for exported resources ("clients" are exporting their backup configuration and the bacula-dir is collecting them).

Note: Take some time to integrate this module in your environment, bacula is pretty complex.

More to come as soon there is some code.

## License

**cc-by-sa**
