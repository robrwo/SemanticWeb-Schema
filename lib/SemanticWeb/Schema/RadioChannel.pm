package SemanticWeb::Schema::RadioChannel;

# ABSTRACT: A unique instance of a radio BroadcastService on a CableOrSatelliteService lineup.

use Moo;

extends qw/ SemanticWeb::Schema::BroadcastChannel /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A unique instance of a radio BroadcastService on a CableOrSatelliteService
lineup.




=cut


around json_ld_type => sub { return 'RadioChannel' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::BroadcastChannel>

=cut

1;
