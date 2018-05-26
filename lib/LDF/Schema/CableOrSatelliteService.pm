package LDF::Schema::CableOrSatelliteService;

# ABSTRACT: A service which provides access to media programming like TV or radio

use Moo;

extends qw/ LDF::Schema::Service /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A service which provides access to media programming like TV or radio.
Access may be via cable or satellite.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'CableOrSatelliteService' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
    ]
};



=head1 SEE ALSO



L<LDF::Schema::Service>

=cut

1;
