package LDF::Schema::SportsEvent;

# ABSTRACT: Event type: Sports event.

use Moo;

extends qw/ LDF::Schema::Event /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Event type: Sports event.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<away_team>

C<awayTeam>

The away team in a sports event.


A away_team should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=item C<InstanceOf['LDF::Schema::SportsTeam']>

=back

=cut

has away_team => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<competitor>



A competitor in a sports event.


A competitor should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=item C<InstanceOf['LDF::Schema::SportsTeam']>

=back

=cut

has competitor => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<home_team>

C<homeTeam>

The home team in a sports event.


A home_team should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::SportsTeam']>

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has home_team => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'SportsEvent' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { awayTeam => 'away_team' },
      { competitor => 'competitor' },
      { homeTeam => 'home_team' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::Event>

=cut

1;
