use utf8;

package SemanticWeb::Schema::claimInterpreter;

# ABSTRACT: For a [[Claim]] interpreted from [[MediaObject]] content sed to indicate a claim contained

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'claimInterpreter';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

For a L<SemanticWeb::Schema::Claim> interpreted from L<SemanticWeb::Schema::MediaObject> content
    sed to indicate a claim contained, implied or refined from the content of a L<SemanticWeb::Schema::MediaObject>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
