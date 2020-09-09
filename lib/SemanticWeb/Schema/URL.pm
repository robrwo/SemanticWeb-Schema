use utf8;

package SemanticWeb::Schema::URL;

# ABSTRACT: Data type: URL.

use Moo;

extends qw/ SemanticWeb::Schema::Text /;


use MooX::JSON_LD 'URL';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.0';

=encoding utf8

=head1 DESCRIPTION

Data type: URL.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Text>

=cut

1;
