use utf8;

package SemanticWeb::Schema::costCategory;

# ABSTRACT: The category of cost

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'costCategory';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The category of cost, such as wholesale, retail, reimbursement cap, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
