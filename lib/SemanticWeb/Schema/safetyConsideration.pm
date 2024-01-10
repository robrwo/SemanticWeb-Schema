use utf8;

package SemanticWeb::Schema::safetyConsideration;

# ABSTRACT: Any potential safety concern associated with the supplement

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'safetyConsideration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Any potential safety concern associated with the supplement. May include
interactions with other drugs and foods, pregnancy, breastfeeding, known
adverse reactions, and documented efficacy of the supplement.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
