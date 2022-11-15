use utf8;

package SemanticWeb::Schema::BusinessEntityType;

# ABSTRACT: A business entity type is a conceptual entity representing the legal form

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'BusinessEntityType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

A business entity type is a conceptual entity representing the legal form, the size, the main line of business, the position in the value chain, or any combination thereof, of an organization or business person.

Commonly used values:

=over

=item *

http://purl.org/goodrelations/v1#Business


=item *

http://purl.org/goodrelations/v1#Enduser


=item *

http://purl.org/goodrelations/v1#PublicInstitution


=item *

http://purl.org/goodrelations/v1#Reseller


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
