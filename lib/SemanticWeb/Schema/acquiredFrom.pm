use utf8;

package SemanticWeb::Schema::acquiredFrom;

# ABSTRACT: The organization or person from which the product was acquired.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'acquiredFrom';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The organization or person from which the product was acquired.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
