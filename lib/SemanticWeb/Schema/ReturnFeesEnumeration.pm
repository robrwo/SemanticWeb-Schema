use utf8;

package SemanticWeb::Schema::ReturnFeesEnumeration;

# ABSTRACT: ReturnFeesEnumeration expresses policies for return fees.

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'ReturnFeesEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

ReturnFeesEnumeration expresses policies for return fees.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
