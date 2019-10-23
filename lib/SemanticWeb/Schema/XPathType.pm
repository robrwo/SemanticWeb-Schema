use utf8;

package SemanticWeb::Schema::XPathType;

# ABSTRACT: Text representing an XPath (typically but not necessarily version 1

use Moo;

extends qw/ SemanticWeb::Schema::Text /;


use MooX::JSON_LD 'XPathType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.1';

=encoding utf8

=head1 DESCRIPTION

Text representing an XPath (typically but not necessarily version 1.0).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Text>

=cut

1;
