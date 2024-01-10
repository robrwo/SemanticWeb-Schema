use utf8;

package SemanticWeb::Schema::interpretedAsClaim;

# ABSTRACT: Used to indicate a specific claim contained

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'interpretedAsClaim';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Used to indicate a specific claim contained, implied, translated or refined from the content of a L<SemanticWeb::Schema::MediaObject> or other L<SemanticWeb::Schema::CreativeWork>. The interpreting party can be indicated using [[claimInterpreter]].



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
