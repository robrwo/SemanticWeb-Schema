use utf8;

package SemanticWeb::Schema::ComicSeries;

# ABSTRACT: A sequential publication of comic stories under a unifying title

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Periodical /;


use MooX::JSON_LD 'ComicSeries';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A sequential publication of comic stories under a unifying title, for
example "The Amazing Spider-Man" or "Groo the Wanderer".




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Periodical>

=cut

1;
