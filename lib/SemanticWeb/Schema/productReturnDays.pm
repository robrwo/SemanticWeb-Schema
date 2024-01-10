use utf8;

package SemanticWeb::Schema::productReturnDays;

# ABSTRACT: The productReturnDays property indicates the number of days (from purchase) within which relevant product return policy is applicable.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'productReturnDays';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The productReturnDays property indicates the number of days (from purchase)
within which relevant product return policy is applicable.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
