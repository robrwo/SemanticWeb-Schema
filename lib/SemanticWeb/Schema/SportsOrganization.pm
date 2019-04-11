use utf8;

package SemanticWeb::Schema::SportsOrganization;

# ABSTRACT: Represents the collection of all sports organizations

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'SportsOrganization';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.2';

=encoding utf8

=head1 DESCRIPTION

Represents the collection of all sports organizations, including sports
teams, governing bodies, and sports associations.




=head1 ATTRIBUTES


=head2 C<sport>



A type of sport (e.g. Baseball).


A sport should be one of the following types:

=over

=item C<Str>

=back

=cut

has sport => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'sport',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
