use utf8;

package SemanticWeb::Schema::WarrantyScope;

# ABSTRACT: A range of of services that will be provided to a customer free of charge in case of a defect or malfunction of a product

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'WarrantyScope';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

A range of of services that will be provided to a customer free of charge
in case of a defect or malfunction of a product.\n\nCommonly used
values:\n\n* http://purl.org/goodrelations/v1#Labor-BringIn\n*
http://purl.org/goodrelations/v1#PartsAndLabor-BringIn\n*
http://purl.org/goodrelations/v1#PartsAndLabor-PickUp 




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
