package LDF::Schema::DeliveryMethod;

# ABSTRACT: <p>A delivery method is a standardized procedure for transferring the product or service to the destination of fulfillment chosen by the customer

use Moo;

extends qw/ LDF::Schema::Enumeration /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>A delivery method is a standardized procedure for transferring the
product or service to the destination of fulfillment chosen by the
customer. Delivery methods are characterized by the means of transportation
used, and by the organization or group that is the contracting party for
the sending organization or person.</p> <p>Commonly used values:</p> <ul>
<li>http://purl.org/goodrelations/v1#DeliveryModeDirectDownload</li>
<li>http://purl.org/goodrelations/v1#DeliveryModeFreight</li>
<li>http://purl.org/goodrelations/v1#DeliveryModeMail</li>
<li>http://purl.org/goodrelations/v1#DeliveryModeOwnFleet</li>
<li>http://purl.org/goodrelations/v1#DeliveryModePickUp</li>
<li>http://purl.org/goodrelations/v1#DHL</li>
<li>http://purl.org/goodrelations/v1#FederalExpress</li>
<li>http://purl.org/goodrelations/v1#UPS</li> </ul> 

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'DeliveryMethod' }

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



L<LDF::Schema::Enumeration>

=cut

1;
