use utf8;

package SemanticWeb::Schema::Researcher;

# ABSTRACT: Researchers.

use Moo;

extends qw/ SemanticWeb::Schema::Audience /;


use MooX::JSON_LD 'Researcher';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

Researchers.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Audience>

=cut

1;
