use utf8;

package SemanticWeb::Schema::Float;

# ABSTRACT: Data type: Floating number.

use Moo;

extends qw/ SemanticWeb::Schema::Number /;


use MooX::JSON_LD 'Float';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.0';

=encoding utf8

=head1 DESCRIPTION

Data type: Floating number.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Number>

=cut

1;
