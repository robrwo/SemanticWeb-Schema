use utf8;

package SemanticWeb::Schema::tourBookingPage;

# ABSTRACT: A page providing information on how to book a tour of some [[Place]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'tourBookingPage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A page providing information on how to book a tour of some L<SemanticWeb::Schema::Place>, such as an L<SemanticWeb::Schema::Accommodation> or L<SemanticWeb::Schema::ApartmentComplex> in a real estate setting, as well as other kinds of tours as appropriate.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
