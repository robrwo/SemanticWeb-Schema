use utf8;

package SemanticWeb::Schema::highPrice;

# ABSTRACT: The highest price of all offers available

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'highPrice';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The highest price of all offers available.

Usage guidelines:

=over

=item *

Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.


=item *

Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
