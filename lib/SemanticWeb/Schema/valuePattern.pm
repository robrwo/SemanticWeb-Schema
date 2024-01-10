use utf8;

package SemanticWeb::Schema::valuePattern;

# ABSTRACT: Specifies a regular expression for testing literal values according to the HTML spec.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'valuePattern';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Specifies a regular expression for testing literal values according to the
HTML spec.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
