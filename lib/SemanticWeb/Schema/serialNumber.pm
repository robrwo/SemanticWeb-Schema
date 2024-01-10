use utf8;

package SemanticWeb::Schema::serialNumber;

# ABSTRACT: The serial number or any alphanumeric identifier of a particular product

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'serialNumber';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The serial number or any alphanumeric identifier of a particular product.
When attached to an offer, it is a shortcut for the serial number of the
product included in the offer.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
