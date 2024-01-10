use utf8;

package SemanticWeb::Schema::Energy;

# ABSTRACT: Properties that take Energy as values are of the form '<Number> <Energy unit of measure>'.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Quantity /;


use MooX::JSON_LD 'Energy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Properties that take Energy as values are of the form '&lt;Number&gt;
&lt;Energy unit of measure&gt;'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Quantity>

=cut

1;
