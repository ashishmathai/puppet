define concat::fragment (
  String                             $target,
  Optional[Any]                      $content = undef,
  Optional[Variant[String, Array]]   $source  = undef,
  Variant[String, Integer]           $order   = '10',
) {
  $resource = 'Concat::Fragment'

  if ($order =~ String and $order =~ /[:\n\/]/) {
    fail("${resource}['${title}']: 'order' cannot contain '/', ':', or '\\n'.")
  }

  if ! ($content or $source) {
    crit('No content, source or symlink specified')
  } elsif ($content and $source) {
    fail("${resource}['${title}']: Can't use 'source' and 'content' at the same time.")
  }

  # $serverversion is empty on 'puppet apply' runs. Just use clientversion.
  $_serverversion    = getvar('serverversion') ? {
    undef   => $clientversion,
    default => $serverversion,
  }
  if versioncmp($clientversion, '6.0') >= 0 and versioncmp($_serverversion, '6.0') >= 0 {
    assert_type(Optional[Variant[String, Deferred]], $content)
  } else {
    assert_type(Optional[String], $content)
  }

  $safe_target_name = regsubst($target, '[\\\\/:~\n\s\+\*\(\)@]', '_', 'GM')

  concat_fragment { $name:
    target  => $target,
    tag     => $safe_target_name,
    order   => $order,
    content => $content,
    source  => $source,
  }
}
