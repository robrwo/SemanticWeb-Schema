package SemanticWeb::Schema::Hostel;

# ABSTRACT: A hostel - cheap accommodation

use Moo;

extends qw/ SemanticWeb::Schema::LodgingBusiness /;


use MooX::JSON_LD 'Hostel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

=begin html

A hostel - cheap accommodation, often in shared dormitories. <br /><br />
See also the <a href="/docs/hotels.html">dedicated document on the use of
schema.org for marking up hotels and other forms of accommodations</a>.

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LodgingBusiness>

=cut

1;