use utf8;

package SemanticWeb::Schema::codeRepository;

# ABSTRACT: Link to the repository where the un-compiled

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'codeRepository';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Link to the repository where the un-compiled, human readable code and
related code is located (SVN, GitHub, CodePlex).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
