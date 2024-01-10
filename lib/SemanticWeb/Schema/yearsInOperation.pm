use utf8;

package SemanticWeb::Schema::yearsInOperation;

# ABSTRACT: The age of the business.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'yearsInOperation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The age of the business.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
