use utf8;

package SemanticWeb::Schema::BusinessEntityType;

# ABSTRACT: A business entity type is a conceptual entity representing the legal form

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'BusinessEntityType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

A business entity type is a conceptual entity representing the legal form,
the size, the main line of business, the position in the value chain, or
any combination thereof, of an organization or business person.\n\nCommonly
used values:\n\n* http://purl.org/goodrelations/v1#Business\n*
http://purl.org/goodrelations/v1#Enduser\n*
http://purl.org/goodrelations/v1#PublicInstitution\n*
http://purl.org/goodrelations/v1#Reseller 




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
