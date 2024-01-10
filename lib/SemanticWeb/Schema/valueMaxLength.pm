use utf8;

package SemanticWeb::Schema::valueMaxLength;

# ABSTRACT: Specifies the allowed range for number of characters in a literal value.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'valueMaxLength';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Specifies the allowed range for number of characters in a literal value.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
