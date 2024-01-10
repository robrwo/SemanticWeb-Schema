use utf8;

package SemanticWeb::Schema::billingIncrement;

# ABSTRACT: This property specifies the minimal quantity and rounding increment that will be the basis for the billing

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'billingIncrement';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

This property specifies the minimal quantity and rounding increment that
will be the basis for the billing. The unit of measurement is specified by
the unitCode property.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
