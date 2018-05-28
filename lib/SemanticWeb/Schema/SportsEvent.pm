package SemanticWeb::Schema::SportsEvent;

# ABSTRACT: Event type: Sports event.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

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

=cut

has away_team => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'awayTeam',
    json_ld_serializer => \&_serialize_away_team,
);

sub _serialize_away_team { $_[0]->_serializer('away_team') }


=head2 C<competitor>



A competitor in a sports event.


A competitor should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::SportsTeam']>

=back

=cut

has competitor => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'competitor',
    json_ld_serializer => \&_serialize_competitor,
);

sub _serialize_competitor { $_[0]->_serializer('competitor') }


=head2 C<home_team>

C<homeTeam>

The home team in a sports event.


A home_team should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::SportsTeam']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has home_team => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'homeTeam',
    json_ld_serializer => \&_serialize_home_team,
);

sub _serialize_home_team { $_[0]->_serializer('home_team') }




around json_ld_type => sub { return 'SportsEvent' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'awayTeam' => \&_serialize_away_team,
       'competitor' => \&_serialize_competitor,
       'homeTeam' => \&_serialize_home_team,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
