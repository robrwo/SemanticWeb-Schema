use utf8;

package SemanticWeb::Schema::Continent;

# ABSTRACT: One of the continents (for example

use Moo;

extends qw/ SemanticWeb::Schema::Landform /;


use MooX::JSON_LD 'Continent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.1';

=encoding utf8

=head1 DESCRIPTION

One of the continents (for example, Europe or Africa).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Landform>

=cut

1;
