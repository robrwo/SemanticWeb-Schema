use utf8;

package SemanticWeb::Schema::SportsEvent;

# ABSTRACT: Event type: Sports event.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'SportsEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

Event type: Sports event.




=head1 ATTRIBUTES


=head2 C<away_team>

C<awayTeam>

The away team in a sports event.


A away_team should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::SportsTeam']>

=back

=head2 C<_has_away_team>

A predicate for the L</away_team> attribute.

=cut

has away_team => (
    is        => 'rw',
    predicate => '_has_away_team',
    json_ld   => 'awayTeam',
);


=head2 C<competitor>



A competitor in a sports event.


A competitor should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::SportsTeam']>

=back

=head2 C<_has_competitor>

A predicate for the L</competitor> attribute.

=cut

has competitor => (
    is        => 'rw',
    predicate => '_has_competitor',
    json_ld   => 'competitor',
);


=head2 C<home_team>

C<homeTeam>

The home team in a sports event.


A home_team should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::SportsTeam']>

=back

=head2 C<_has_home_team>

A predicate for the L</home_team> attribute.

=cut

has home_team => (
    is        => 'rw',
    predicate => '_has_home_team',
    json_ld   => 'homeTeam',
);


=head2 C<sport>



A type of sport (e.g. Baseball).


A sport should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_sport>

A predicate for the L</sport> attribute.

=cut

has sport => (
    is        => 'rw',
    predicate => '_has_sport',
    json_ld   => 'sport',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
