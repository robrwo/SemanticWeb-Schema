package SemanticWeb::Schema::CableOrSatelliteService;

# ABSTRACT: A service which provides access to media programming like TV or radio

use Moo;

extends qw/ SemanticWeb::Schema::Service /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A service which provides access to media programming like TV or radio.
Access may be via cable or satellite.




=cut


around json_ld_type => sub { return 'CableOrSatelliteService' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Service>

=cut

1;
