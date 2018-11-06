use utf8;

package SemanticWeb::Schema::Integer;

# ABSTRACT: Data type: Integer.

use Moo;

extends qw/ SemanticWeb::Schema::Number /;


use MooX::JSON_LD 'Integer';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.3';

=encoding utf8

=head1 DESCRIPTION

Data type: Integer.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Number>

=cut

1;
