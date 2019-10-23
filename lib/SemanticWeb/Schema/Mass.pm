use utf8;

package SemanticWeb::Schema::Mass;

# ABSTRACT: Properties that take Mass as values are of the form '<Number> <Mass unit of measure>'

use Moo;

extends qw/ SemanticWeb::Schema::Quantity /;


use MooX::JSON_LD 'Mass';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.2';

=encoding utf8

=head1 DESCRIPTION

Properties that take Mass as values are of the form '&lt;Number&gt;
&lt;Mass unit of measure&gt;'. E.g., '7 kg'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Quantity>

=cut

1;
