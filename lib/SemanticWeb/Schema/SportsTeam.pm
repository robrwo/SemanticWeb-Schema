package SemanticWeb::Schema::SportsTeam;

# ABSTRACT: Organization: Sports team.

use Moo;

extends qw/ SemanticWeb::Schema::SportsOrganization /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Organization: Sports team.




=head1 ATTRIBUTES


=head2 C<athlete>



A person that acts as performing member of a sports team; a player as
opposed to a coach.


A athlete should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has athlete => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'athlete',
    json_ld_serializer => \&_serialize_athlete,
);

sub _serialize_athlete { $_[0]->_serializer('athlete') }


=head2 C<coach>



A person that acts in a coaching role for a sports team.


A coach should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has coach => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'coach',
    json_ld_serializer => \&_serialize_coach,
);

sub _serialize_coach { $_[0]->_serializer('coach') }




around json_ld_type => sub { return 'SportsTeam' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'athlete' => \&_serialize_athlete,
       'coach' => \&_serialize_coach,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::SportsOrganization>

=cut

1;
