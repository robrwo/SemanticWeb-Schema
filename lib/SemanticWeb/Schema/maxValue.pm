use utf8;

package SemanticWeb::Schema::maxValue;

# ABSTRACT: The upper value of some characteristic or property.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'maxValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The upper value of some characteristic or property.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
