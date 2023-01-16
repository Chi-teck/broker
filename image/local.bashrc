###############################################
HISTTIMEFORMAT="[%F %T] "


function d7d {
  cd /var/www/d7/web
}

function d8d {
  cd /var/www/d8/web
}

function d9d {
  cd /var/www/d9/web
}

function d10d {
  cd /var/www/d10/web
}

function sm-test {
  local DRUPAL_ROOT=/var/www/d10/web
  (cd $DRUPAL_ROOT && dtest --types "Simpletest,PHPUnit-Unit,PHPUnit-Kernel,PHPUnit-Functional" snippet_manager)
  sudo -u www-data MINK_DRIVER_ARGS_WEBDRIVER='["chrome", null, "http://172.30.0.1:4444/wd/hub"]' \
    $DRUPAL_ROOT/vendor/bin/phpunit -c $DRUPAL_ROOT/core $DRUPAL_ROOT/modules/my/snippet_manager/tests/src/FunctionalJavascript
}

function lm-test {
  local DRUPAL_ROOT=/var/www/d10/web
  (cd $DRUPAL_ROOT && dtest --types "Simpletest,PHPUnit-Unit,PHPUnit-Kernel,PHPUnit-Functional" library_manager)
  sudo -u www-data MINK_DRIVER_ARGS_WEBDRIVER='["chrome", null, "http://172.30.0.1:4444/wd/hub"]' \
    $DRUPAL_ROOT/vendor/bin/phpunit -c $DRUPAL_ROOT/core $DRUPAL_ROOT/modules/my/library_manager/tests/src/FunctionalJavascript
}

function cme-test {
   local DRUPAL_ROOT=/var/www/d10/web
   local CME_PATH=$DRUPAL_ROOT/modules/my/codemirror_editor
   (cd $DRUPAL_ROOT && dtest --types "PHPUnit-Unit,PHPUnit-Kernel,PHPUnit-Functional" --url http://nimfa.my/d8/docroot codemirror_editor)
   sudo -u www-data MINK_DRIVER_ARGS_WEBDRIVER='["chrome", null, "http://172.30.0.1:4444/wd/hub"]' \
     $DRUPAL_ROOT/vendor/bin/phpunit -c $DRUPAL_ROOT/core $CME_PATH/tests/src/FunctionalJavascript
   (cd $CME_PATH && drupalcs .)
   (cd $CME_PATH && eslint js)
   (cd $DRUPAL_ROOT/core && stylelint $CME_PATH/css)
}

export DCG_DRUPAL_HOST=172.30.0.5
export DCG_WD_URL=http://172.17.0.1:4444/wd/hub
export DCG_TMP_DIR=/mnt/tmpfs


export XDEBUG_CONFIG='client_host=172.30.0.1 start_with_request=yes'

export TERM=xterm-256color

