use utf8;

package SemanticWeb::Schema::postOfficeBoxNumber;

# ABSTRACT: The post office box number for PO box addresses.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'postOfficeBoxNumber';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The post office box number for PO box addresses.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
