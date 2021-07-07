use utf8;

package SemanticWeb::Schema::IndividualProduct;

# ABSTRACT: A single, identifiable product instance (e

use Moo;

extends qw/ SemanticWeb::Schema::Product /;


use MooX::JSON_LD 'IndividualProduct';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.0';

=encoding utf8

=head1 DESCRIPTION

A single, identifiable product instance (e.g. a laptop with a particular
serial number).




=head1 ATTRIBUTES


=head2 C<serial_number>

C<serialNumber>

The serial number or any alphanumeric identifier of a particular product.
When attached to an offer, it is a shortcut for the serial number of the
product included in the offer.


A serial_number should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_serial_number>

A predicate for the L</serial_number> attribute.

=cut

has serial_number => (
    is        => 'rw',
    predicate => '_has_serial_number',
    json_ld   => 'serialNumber',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Product>

=cut

1;
