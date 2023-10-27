use utf8;

package SemanticWeb::Schema::WarrantyScope;

# ABSTRACT: A range of services that will be provided to a customer free of charge in case of a defect or malfunction of a product

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'WarrantyScope';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

A range of services that will be provided to a customer free of charge in case of a defect or malfunction of a product.

Commonly used values:

=over

=item *

http://purl.org/goodrelations/v1#Labor-BringIn


=item *

http://purl.org/goodrelations/v1#PartsAndLabor-BringIn


=item *

http://purl.org/goodrelations/v1#PartsAndLabor-PickUp


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
