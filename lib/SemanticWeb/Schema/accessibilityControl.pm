use utf8;

package SemanticWeb::Schema::accessibilityControl;

# ABSTRACT: Identifies input methods that are sufficient to fully control the described resource

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'accessibilityControl';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Identifies input methods that are sufficient to fully control the described
resource. Values should be drawn from the [approved
vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibility
Control-vocabulary).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
