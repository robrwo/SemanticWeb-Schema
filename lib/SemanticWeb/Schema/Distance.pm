use utf8;

package SemanticWeb::Schema::Distance;

# ABSTRACT: Properties that take Distances as values are of the form '<Number> <Length unit of measure>'

use Moo;

extends qw/ SemanticWeb::Schema::Quantity /;


use MooX::JSON_LD 'Distance';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.0';

=encoding utf8

=head1 DESCRIPTION

Properties that take Distances as values are of the form '&lt;Number&gt;
&lt;Length unit of measure&gt;'. E.g., '7 ft'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Quantity>

=cut

1;
