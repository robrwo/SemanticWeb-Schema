use utf8;

package SemanticWeb::Schema::USNonprofitType;

# ABSTRACT: USNonprofitType: Non-profit organization type originating from the United States.

use Moo;

extends qw/ SemanticWeb::Schema::NonprofitType /;


use MooX::JSON_LD 'USNonprofitType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

USNonprofitType: Non-profit organization type originating from the United
States.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::NonprofitType>

=cut

1;
