use utf8;

package SemanticWeb::Schema::hasDigitalDocumentPermission;

# ABSTRACT: A permission related to the access to this document (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hasDigitalDocumentPermission';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A permission related to the access to this document (e.g. permission to
read or write an electronic document). For a public document, specify a
grantee with an Audience with audienceType equal to "public".




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
