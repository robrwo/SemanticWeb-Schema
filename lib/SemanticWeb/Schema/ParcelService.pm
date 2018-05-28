package SemanticWeb::Schema::ParcelService;

# ABSTRACT: <p>A private parcel service as the delivery mode available for a certain offer

use Moo;

extends qw/ SemanticWeb::Schema::DeliveryMethod /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>A private parcel service as the delivery mode available for a certain
offer.</p> <p>Commonly used values:</p> <ul>
<li>http://purl.org/goodrelations/v1#DHL</li>
<li>http://purl.org/goodrelations/v1#FederalExpress</li>
<li>http://purl.org/goodrelations/v1#UPS</li> </ul> 

=end html




=cut


around json_ld_type => sub { return 'ParcelService' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::DeliveryMethod>

=cut

1;
