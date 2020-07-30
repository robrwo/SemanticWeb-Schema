use utf8;

package SemanticWeb::Schema::MerchantReturnEnumeration;

# ABSTRACT: MerchantReturnEnumeration enumerates several kinds of product return policy

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'MerchantReturnEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.0';

=encoding utf8

=head1 DESCRIPTION

MerchantReturnEnumeration enumerates several kinds of product return
policy. Note that this structure may not capture all aspects of the policy.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
