package Googler;
use 5.008003;
use Mouse;
extends 'Cog::App';

our $VERSION = '0.01';

use constant webapp_class => 'Strategic::StoryBoard::WebApp';

package Strategic::StoryBoard::WebApp;
use Mouse;
extends 'Cog::WebApp';

use constant site_navigation => [
    '()',
];

use constant url_map => [
    '()',
    ['/(.*)' => 'search', ('$1')],
];

use constant js_files => [
    'googler.js',
];

1;

=encoding utf8

=head1 NAME

Googler - Sample Cog Proxy App

=head1 AUTHOR

Ingy döt Net <ingy@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright (c) 2010, 2011. Ingy döt Net.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See http://www.perl.com/perl/misc/Artistic.html

=cut
