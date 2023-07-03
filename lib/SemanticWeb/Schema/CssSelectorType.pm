use utf8;

package SemanticWeb::Schema::CssSelectorType;

# ABSTRACT: Text representing a CSS selector.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Text /;


use MooX::JSON_LD 'CssSelectorType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.0';

=encoding utf8

=head1 DESCRIPTION

Text representing a CSS selector.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Text>

=cut

1;
