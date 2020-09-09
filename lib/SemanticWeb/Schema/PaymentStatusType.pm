use utf8;

package SemanticWeb::Schema::PaymentStatusType;

# ABSTRACT: A specific payment status

use Moo;

extends qw/ SemanticWeb::Schema::StatusEnumeration /;


use MooX::JSON_LD 'PaymentStatusType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.0';

=encoding utf8

=head1 DESCRIPTION

A specific payment status. For example, PaymentDue, PaymentComplete, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::StatusEnumeration>

=cut

1;
