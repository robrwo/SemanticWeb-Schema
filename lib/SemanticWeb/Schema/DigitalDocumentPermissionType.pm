use utf8;

package SemanticWeb::Schema::DigitalDocumentPermissionType;

# ABSTRACT: A type of permission which can be granted for accessing a digital document.

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'DigitalDocumentPermissionType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.2';

=encoding utf8

=head1 DESCRIPTION

A type of permission which can be granted for accessing a digital document.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
