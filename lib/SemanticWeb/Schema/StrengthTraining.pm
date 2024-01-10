use utf8;

package SemanticWeb::Schema::StrengthTraining;

# ABSTRACT: Physical activity that is engaged in to improve muscle and bone strength

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'StrengthTraining';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Physical activity that is engaged in to improve muscle and bone strength.
Also referred to as resistance training.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
