use utf8;

package SemanticWeb::Schema::GovernmentBenefitsType;

# ABSTRACT: GovernmentBenefitsType enumerates several kinds of government benefits to support the COVID-19 situation

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'GovernmentBenefitsType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.1';

=encoding utf8

=head1 DESCRIPTION

GovernmentBenefitsType enumerates several kinds of government benefits to
support the COVID-19 situation. Note that this structure may not capture
all benefits offered.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
