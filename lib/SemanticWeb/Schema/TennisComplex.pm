use utf8;

package SemanticWeb::Schema::TennisComplex;

# ABSTRACT: A tennis complex.

use Moo;

extends qw/ SemanticWeb::Schema::SportsActivityLocation /;


use MooX::JSON_LD 'TennisComplex';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.1';

=encoding utf8

=head1 DESCRIPTION

A tennis complex.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::SportsActivityLocation>

=cut

1;
