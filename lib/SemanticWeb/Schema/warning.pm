use utf8;

package SemanticWeb::Schema::warning;

# ABSTRACT: Any FDA or other warnings about the drug (text or URL).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'warning';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Any FDA or other warnings about the drug (text or URL).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
