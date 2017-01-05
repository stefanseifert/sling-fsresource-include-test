FSResource Include Test with Sling Lauchpad 8
=============================================

Start Launchapd
---------------

* Use `clean_install_start_launchpad.sh` to compile the application and start a launchpad with it


Call application without fsresource provider
--------------------------------------------

* After starting launchpad open URL http://localhost:8080/content/index.html
* It shows a text 'This fragment is included from common/fragment.html.' which is included via data-sly-include

Call application without fsresource provider
--------------------------------------------

* Mount the application path of `bundles/application` in the repository to the local filesystem via fsresource e.g. via
  `mvn -Dsling.mountByFS=true sling:install'
* Open URL http://localhost:8080/content/index.html
* It shows a text 'This fragment is included from common/fragment.html.' which is included via data-sly-include