use utf8;

package SemanticWeb::Schema::subTrip;

# ABSTRACT: Identifies a [[Trip]] that is a subTrip of this Trip

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'subTrip';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Identifies a L<SemanticWeb::Schema::Trip> that is a subTrip of this Trip.  For example Day 1, Day 2, etc. of a multi-day trip.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
