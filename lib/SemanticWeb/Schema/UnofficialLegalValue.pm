use utf8;

package SemanticWeb::Schema::UnofficialLegalValue;

# ABSTRACT: Indicates that a document has no particular or special standing (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'UnofficialLegalValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates that a document has no particular or special standing (e.g. a
republication of a law by a private publisher).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
