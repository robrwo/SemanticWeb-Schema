use utf8;

package SemanticWeb::Schema::AuthoritativeLegalValue;

# ABSTRACT: Indicates that the publisher gives some special status to the publication of the document

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'AuthoritativeLegalValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates that the publisher gives some special status to the publication of the document. ("The Queens Printer" version of a UK Act of Parliament, or the PDF version of a Directive published by the EU Office of Publications.) Something "Authoritative" is considered to be also L<SemanticWeb::Schema::OfficialLegalValue>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
