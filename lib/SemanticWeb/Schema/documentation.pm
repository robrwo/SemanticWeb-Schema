use utf8;

package SemanticWeb::Schema::documentation;

# ABSTRACT: Further documentation describing the Web API in more detail.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'documentation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Further documentation describing the Web API in more detail.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
