use utf8;

package SemanticWeb::Schema::ReturnFeesEnumeration;

# ABSTRACT: Enumerates several kinds of policies for product return fees.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'ReturnFeesEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

Enumerates several kinds of policies for product return fees.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
